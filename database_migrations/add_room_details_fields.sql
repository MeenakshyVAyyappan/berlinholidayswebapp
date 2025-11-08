-- Migration: Add additional room details fields to room_types table
-- Date: 2025-11-08
-- Description: Adds fields for category label, bed type, star rating, check-in/out times, house rules, and children policy

-- Add new columns to room_types table
ALTER TABLE room_types 
ADD COLUMN IF NOT EXISTS category_label TEXT,
ADD COLUMN IF NOT EXISTS bed_type TEXT,
ADD COLUMN IF NOT EXISTS star_rating INTEGER DEFAULT 5,
ADD COLUMN IF NOT EXISTS check_in_time TEXT DEFAULT '9:00 AM',
ADD COLUMN IF NOT EXISTS check_out_time TEXT DEFAULT '12:00 PM',
ADD COLUMN IF NOT EXISTS early_check_in BOOLEAN DEFAULT true,
ADD COLUMN IF NOT EXISTS house_rules TEXT,
ADD COLUMN IF NOT EXISTS children_policy TEXT;

-- Add check constraint for star rating (1-5)
ALTER TABLE room_types 
ADD CONSTRAINT check_star_rating CHECK (star_rating >= 1 AND star_rating <= 5);

-- Add comments to document the new columns
COMMENT ON COLUMN room_types.category_label IS 'Display label for room category (e.g., LUXURY ROOM, DELUXE SUITE)';
COMMENT ON COLUMN room_types.bed_type IS 'Type and number of beds (e.g., 2 King Bed, 1 Queen Bed)';
COMMENT ON COLUMN room_types.star_rating IS 'Star rating for the room (1-5 stars)';
COMMENT ON COLUMN room_types.check_in_time IS 'Check-in time information';
COMMENT ON COLUMN room_types.check_out_time IS 'Check-out time information';
COMMENT ON COLUMN room_types.early_check_in IS 'Whether early check-in is available';
COMMENT ON COLUMN room_types.house_rules IS 'House rules for the room';
COMMENT ON COLUMN room_types.children_policy IS 'Children and extra beds policy';

