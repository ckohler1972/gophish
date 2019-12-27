
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE `group_targets` ADD INDEX `idx_target_group` (`target_id`,`group_id`) USING BTREE;


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

