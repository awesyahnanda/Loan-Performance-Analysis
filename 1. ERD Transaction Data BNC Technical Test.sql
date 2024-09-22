CREATE TABLE `transaction_detail` (
  `transaction_date` date,
  `user_id` int PRIMARY KEY,
  `transaction_id` text,
  `transaction_amount` int
);

CREATE TABLE `user_info` (
  `user_id` int PRIMARY KEY,
  `user_name` text,
  `user_type` text
);

CREATE TABLE `transaction_detail_user_info` (
  `transaction_detail_user_id` int,
  `user_info_user_id` int,
  PRIMARY KEY (`transaction_detail_user_id`, `user_info_user_id`)
);

ALTER TABLE `transaction_detail_user_info` ADD FOREIGN KEY (`transaction_detail_user_id`) REFERENCES `transaction_detail` (`user_id`);

ALTER TABLE `transaction_detail_user_info` ADD FOREIGN KEY (`user_info_user_id`) REFERENCES `user_info` (`user_id`);

