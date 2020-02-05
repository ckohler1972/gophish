
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied

ALTER TABLE `events` ADD INDEX `idx_campaign_id` USING BTREE (`campaign_id`);
ALTER TABLE `results` ADD INDEX `idx_campaign_id` USING BTREE (`campaign_id`);
ALTER TABLE `results` ADD INDEX `idx_r_id` USING BTREE (`r_id`);


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

ALTER TABLE `events` DROP INDEX `idx_campaign_id`;
ALTER TABLE `results` DROP INDEX `idx_campaign_id`;
ALTER TABLE `results` DROP INDEX `idx_r_id`;
