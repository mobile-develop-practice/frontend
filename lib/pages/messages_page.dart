import 'package:chat/models/models.dart';
import 'package:chat/screens/screen.dart';
import 'package:chat/theme.dart';
import 'package:chat/widgets/avatar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final Faker faker = Faker();
              final date = faker.date.dateTime(minYear: 2021, maxYear: 2022);
              return _MessageTitle(
                  messageData: MessageData(
                      senderName: faker.person.name(),
                      message: faker.lorem.sentence(),
                      MessageDate: date,
                      dateMessage: Jiffy(date).fromNow(),
                      profilePicture:
                          'https://avatars.githubusercontent.com/u/25432932?v=4'
                              .toString()));
            },
          ),
        ),
      ],
    );
  }
}

class _MessageTitle extends StatelessWidget {
  const _MessageTitle({Key? key, required this.messageData}) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Navigator.of(context).push(ChatScreen.route(messageData));
        },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Avatar.medium(
              url: messageData.profilePicture,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    messageData.senderName,
                    style: const TextStyle(
                      letterSpacing: 0.2,
                      wordSpacing: 1.5,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    messageData.message,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16, color: AppColors.textFaded),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Theme.of(context).dividerColor),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  messageData.dateMessage.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 11,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textFaded,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                      color: AppColors.secondary, shape: BoxShape.circle),
                  child: const Center(
                    child: Text(
                      '1',
                      style:
                          TextStyle(fontSize: 10, color: AppColors.textLight),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
