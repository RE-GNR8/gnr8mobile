import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:gnr8/services/services.dart';

import '../utils/utils.dart';

class ChatGPT extends StatefulWidget {
  ChatGPT({Key? key}) : super(key: key);

  @override
  State<ChatGPT> createState() => _ChatGPTState();
}

class _ChatGPTState extends State<ChatGPT> {
  //* Variables and Services

  AI _ai = AI();
  String apiKey = "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";
  String webUrl =
      "https://regenerationinternational.org/2022/04/05/agave-power-greening-the-desert/";

  final currentUser = ChatUser(
    id: '1',
    name: 'User',
    profilePhoto: "assets/images/gpt.png",
  );
  final chatGPT = ChatUser(
    id: '2',
    name: 'Chat GPT',
    profilePhoto: "assets/images/gpt.png",
  );
  final _chatController = ChatController(
    initialMessageList: [
      Message(
        message: "What can I assist you with?",
        createdAt: DateTime.now(),
        sendBy: "chatGPT",
      )
    ],
    scrollController: ScrollController(),
    chatUsers: [
      ChatUser(
        id: '1',
        name: 'User',
        profilePhoto: "assets/images/logoSquar.png",
      ),
      ChatUser(
        id: '2',
        name: 'Chat GPT',
        profilePhoto: "assets/images/gpt.png",
      )
    ],
  );
  int lastMessageId = 1;
  //* Methods and Services
  void _onSendTap(
    String message,
    ReplyMessage replyMessage,
    MessageType messageType,
  ) async {
    String webAnswer =
        await _ai.askQuestion(apiKey, webUrl, "What is the project about?");
    print(webAnswer);
    final id = lastMessageId + 1;
    lastMessageId++;
    _chatController.addMessage(
      Message(
        id: id.toString(),
        createdAt: DateTime.now(),
        message: message,
        sendBy: currentUser.id,
        replyMessage: replyMessage,
        messageType: messageType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = DarkTheme();
    return Scaffold(
        body: ChatView(
      currentUser: currentUser,
      chatController: _chatController,
      onSendTap: _onSendTap,
      chatViewState: ChatViewState.hasMessages,
      chatViewStateConfig: ChatViewStateConfiguration(
        loadingWidgetConfig: ChatViewStateWidgetConfiguration(
          loadingIndicatorColor: theme.outgoingChatBubbleColor,
        ),
        onReloadButtonTap: () {},
      ),
      typeIndicatorConfig: TypeIndicatorConfiguration(
        flashingCircleBrightColor: theme.flashingCircleBrightColor,
        flashingCircleDarkColor: theme.flashingCircleDarkColor,
      ),
      appBar: ChatViewAppBar(
        elevation: theme.elevation,
        backGroundColor: theme.appBarColor,
        profilePicture: "assets/images/logoSquar.png",
        backArrowColor: theme.backArrowColor,
        chatTitle: "Chat view",
        chatTitleTextStyle: TextStyle(
          color: theme.appBarTitleTextStyle,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          letterSpacing: 0.25,
        ),
        userStatus: "online",
        userStatusTextStyle: const TextStyle(color: Colors.grey),
        actions: [
          /*  IconButton(
            onPressed: _onThemeIconTap,
            icon: Icon(
              isDarkTheme
                  ? Icons.brightness_4_outlined
                  : Icons.dark_mode_outlined,
              color: theme.themeIconColor,
            ),
          ), */
        ],
      ),
      chatBackgroundConfig: ChatBackgroundConfiguration(
        messageTimeIconColor: theme.messageTimeIconColor,
        messageTimeTextStyle: TextStyle(color: theme.messageTimeTextColor),
        defaultGroupSeparatorConfig: DefaultGroupSeparatorConfiguration(
          textStyle: TextStyle(
            color: theme.chatHeaderColor,
            fontSize: 17,
          ),
        ),
        backgroundColor: theme.backgroundColor,
      ),
      sendMessageConfig: SendMessageConfiguration(
        imagePickerIconsConfig: ImagePickerIconsConfiguration(
          cameraIconColor: theme.cameraIconColor,
          galleryIconColor: theme.galleryIconColor,
        ),
        replyMessageColor: theme.replyMessageColor,
        defaultSendButtonColor: theme.sendButtonColor,
        replyDialogColor: theme.replyDialogColor,
        replyTitleColor: theme.replyTitleColor,
        textFieldBackgroundColor: theme.textFieldBackgroundColor,
        closeIconColor: theme.closeIconColor,
        textFieldConfig: TextFieldConfiguration(
          textStyle: TextStyle(color: theme.textFieldTextColor),
        ),
        micIconColor: theme.replyMicIconColor,
        voiceRecordingConfiguration: VoiceRecordingConfiguration(
          backgroundColor: theme.waveformBackgroundColor,
          recorderIconColor: theme.recordIconColor,
          waveStyle: WaveStyle(
            showMiddleLine: false,
            waveColor: theme.waveColor ?? Colors.white,
            extendWaveform: true,
          ),
        ),
      ),
      chatBubbleConfig: ChatBubbleConfiguration(
        outgoingChatBubbleConfig: ChatBubble(
          linkPreviewConfig: LinkPreviewConfiguration(
            backgroundColor: theme.linkPreviewOutgoingChatColor,
            bodyStyle: theme.outgoingChatLinkBodyStyle,
            titleStyle: theme.outgoingChatLinkTitleStyle,
          ),
          color: theme.outgoingChatBubbleColor,
        ),
        inComingChatBubbleConfig: ChatBubble(
          linkPreviewConfig: LinkPreviewConfiguration(
            linkStyle: TextStyle(
              color: theme.inComingChatBubbleTextColor,
              decoration: TextDecoration.underline,
            ),
            backgroundColor: theme.linkPreviewIncomingChatColor,
            bodyStyle: theme.incomingChatLinkBodyStyle,
            titleStyle: theme.incomingChatLinkTitleStyle,
          ),
          textStyle: TextStyle(color: theme.inComingChatBubbleTextColor),
          senderNameTextStyle:
              TextStyle(color: theme.inComingChatBubbleTextColor),
          color: theme.inComingChatBubbleColor,
        ),
      ),
      replyPopupConfig: ReplyPopupConfiguration(
        backgroundColor: theme.replyPopupColor,
        buttonTextStyle: TextStyle(color: theme.replyPopupButtonColor),
        topBorderColor: theme.replyPopupTopBorderColor,
      ),
      reactionPopupConfig: ReactionPopupConfiguration(
        shadow: BoxShadow(
          color: Colors.black54,
          blurRadius: 20,
        ),
        backgroundColor: theme.reactionPopupColor,
      ),
      messageConfig: MessageConfiguration(
        messageReactionConfig: MessageReactionConfiguration(
          backgroundColor: theme.messageReactionBackGroundColor,
          borderColor: theme.messageReactionBackGroundColor,
          reactedUserCountTextStyle:
              TextStyle(color: theme.inComingChatBubbleTextColor),
          reactionCountTextStyle:
              TextStyle(color: theme.inComingChatBubbleTextColor),
          reactionsBottomSheetConfig: ReactionsBottomSheetConfiguration(
            backgroundColor: theme.backgroundColor,
            reactedUserTextStyle: TextStyle(
              color: theme.inComingChatBubbleTextColor,
            ),
            reactionWidgetDecoration: BoxDecoration(
              color: theme.inComingChatBubbleColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: const Offset(0, 20),
                  blurRadius: 40,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        imageMessageConfig: ImageMessageConfiguration(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          shareIconConfig: ShareIconConfiguration(
            defaultIconBackgroundColor: AppColors.accent,
            defaultIconColor: AppColors.secondary,
          ),
        ),
      ),
      profileCircleConfig:
          ProfileCircleConfiguration(profileImageUrl: "assets/images/gpt.png"),
      repliedMessageConfig: RepliedMessageConfiguration(
        backgroundColor: AppColors.back,
        verticalBarColor: AppColors.secondary,
        repliedMsgAutoScrollConfig: RepliedMsgAutoScrollConfig(
          enableHighlightRepliedMsg: true,
          highlightColor: Colors.pinkAccent.shade100,
          highlightScale: 1.1,
        ),
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.25,
        ),
        replyTitleTextStyle: TextStyle(color: AppColors.black),
      ),
      swipeToReplyConfig: SwipeToReplyConfiguration(),
    ));
  }
}
