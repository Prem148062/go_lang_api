BEGIN;

DROP TRIGGER IF EXISTS set_update_at_timestamp_users_table ON "users";
DROP TRIGGER IF EXISTS set_update_at_timestamp_oauth_table ON "oauth";
DROP TRIGGER IF EXISTS set_update_at_timestamp_products_table ON "products";
DROP TRIGGER IF EXISTS set_update_at_timestamp_images_table ON "images";
DROP TRIGGER IF EXISTS set_update_at_timestamp_orders_table ON "orders";

CREATE TRIGGER set_update_at_timestamp_users_table BEFORE UPDATE ON "users" FOR EACH ROW EXCUTE PROCEDURE set_update_at_column();
CREATE TRIGGER set_update_at_timestamp_oauth_table BEFORE UPDATE ON "oauth" FOR EACH ROW EXCUTE PROCEDURE set_update_at_column();
CREATE TRIGGER set_update_at_timestamp_products_table BEFORE UPDATE ON "products" FOR EACH ROW EXCUTE PROCEDURE set_update_at_column();
CREATE TRIGGER set_update_at_timestamp_images_table BEFORE UPDATE ON "images" FOR EACH ROW EXCUTE PROCEDURE set_update_at_column();
CREATE TRIGGER set_update_at_timestamp_orders_table BEFORE UPDATE ON "orders" FOR EACH ROW EXCUTE PROCEDURE set_update_at_column();

COMMIT;