
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE INDEX idx_events_campaign_id ON "events" ("campaign_id");
CREATE INDEX idx_results_campaign_id ON "results" ("campaign_id");
CREATE INDEX idx_results_r_id ON "results" ("r_id");

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP INDEX IF EXISTS idx_events_campaign_id;
DROP INDEX IF EXISTS idx_results_campaign_id;
DROP INDEX IF EXISTS idx_results_r_id;
