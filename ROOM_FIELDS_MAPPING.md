# 🗺️ Room Fields Mapping - Admin Dashboard to Website

This document shows exactly how each field in the admin dashboard maps to what customers see on the website.

## 📱 Room Listing Page (localhost:5175/room)

### Room Card Display

```
┌─────────────────────────────────────┐
│                                     │
│         [Room Image]                │  ← images[0] (first image)
│                                     │
│  ┌──────────────┐                   │
│  │ $450 | Night │                   │  ← base_price
│  └──────────────┘                   │
│                                     │
│  [View Details Button]              │
├─────────────────────────────────────┤
│  LUXURY ROOM                        │  ← category_label
│                                     │
│  Delux Family Rooms                 │  ← name
│                                     │
│  500 SQ FT/Rooms                    │  ← size
│                                     │
│  🛏️ 2 King Bed                      │  ← bed_type
│                                     │
│  ★★★★★                              │  ← star_rating
└─────────────────────────────────────┘
```

### Field Mapping for Room Card

| Admin Field | Website Display | Location |
|------------|----------------|----------|
| `images[0]` | Main room image | Top of card |
| `base_price` | "$450 \| Night" badge | Top right corner overlay |
| `category_label` | "LUXURY ROOM" | Above room name, uppercase, accent color |
| `name` | "Delux Family Rooms" | Main heading |
| `size` | "500 SQ FT/Rooms" | Below name |
| `bed_type` | "🛏️ 2 King Bed" | Below size, with bed icon |
| `star_rating` | "★★★★★" | Below bed type |

---

## 📄 Room Details Page (localhost:5175/room_details)

### Image Gallery Section

```
┌─────────────────────────────────────┐
│                                     │
│     [Main Image Slider]             │  ← images[] (all images)
│     ← → Navigation arrows           │
│                                     │
└─────────────────────────────────────┘
```

### Room Information Section

```
┌─────────────────────────────────────┐
│  LUXURY ROOM                        │  ← category_label
│                                     │
│  Delux Family Rooms                 │  ← name
│                                     │
│  [Description paragraph]            │  ← description
│                                     │
├─────────────────────────────────────┤
│  Check In                           │
│  ✓ Check-in from 9:00 AM - anytime  │  ← check_in_time
│  ✓ Early check-in subject to        │  ← early_check_in
│    availability                     │
│                                     │
│  Check Out                          │
│  ✓ Check-out before noon            │  ← check_out_time
│  ✓ Check-out from 9:00 AM - anytime │
├─────────────────────────────────────┤
│  House Rules                        │
│  [House rules text]                 │  ← house_rules
│                                     │
├─────────────────────────────────────┤
│  Children & Extra Beds              │
│  [Children policy text]             │  ← children_policy
│                                     │
├─────────────────────────────────────┤
│  Amenities                          │
│  🏊 Swimming Pools                  │  ← amenities[]
│  📶 Free WiFi Available             │     (parsed from array)
│  🍳 Breakfast                       │
│  🏋️ Gym facilities                  │
└─────────────────────────────────────┘
```

### Field Mapping for Room Details

| Admin Field | Website Display | Location |
|------------|----------------|----------|
| `images[]` | Image slider with navigation | Top of page |
| `category_label` | "LUXURY ROOM" | Above room name |
| `name` | "Delux Family Rooms" | Main heading |
| `description` | Full description paragraph | Below name |
| `check_in_time` | "Check-in from 9:00 AM - anytime" | Check In section |
| `early_check_in` | "Early check-in subject to availability" | Check In section |
| `check_out_time` | "Check-out before noon" | Check Out section |
| `house_rules` | Full house rules text | House Rules section |
| `children_policy` | Full children policy text | Children & Extra Beds section |
| `amenities[]` | List with icons | Amenities section |
| `capacity` | "2 - 5 Persons" | Amenities section |
| `size` | "250 SQFT Rooms" | Amenities section |

---

## 💰 Pricing Page (localhost:5175/pricing)

### Pricing Card Display

```
┌─────────────────────────────────────┐
│                                     │
│         [Room Image]                │  ← images[0]
│                                     │
│  Room Services                      │
│                                     │
│  $12 / Daily                        │  ← base_price
│                                     │
│  • Bed and floor Celaning           │  ← amenities[]
│  • Orci nisis uniqua vise nicer     │
│  • Clean totam ipsam markin         │
│  • Wash & Clean equipment           │
│                                     │
│  [PURCHASE NOW]                     │
└─────────────────────────────────────┘
```

---

## 🎨 Admin Dashboard Display

### Room Card in Admin Dashboard

```
┌─────────────────────────────────────┐
│                                     │
│         [Room Image]                │  ← images[0]
│         or Bed Icon                 │
│                                     │
├─────────────────────────────────────┤
│  LUXURY ROOM              ★★★★★     │  ← category_label, star_rating
│                                     │
│  Delux Family Rooms                 │  ← name
│  [Short description]                │  ← description
│                                     │
│  👥 Capacity: 4 Guests              │  ← capacity
│  📏 Size: 500 SQ FT/Rooms           │  ← size
│  🛏️ Bed Type: 2 King Bed            │  ← bed_type
│  Base Price: ₹4500                  │  ← base_price
│                                     │
│  Amenities:                         │
│  [WiFi] [AC] [TV] [Mini Bar]        │  ← amenities[]
│                                     │
│  Total Rooms: 10                    │  ← total_rooms
│                                     │
│  [Edit] [🗑️]                        │
└─────────────────────────────────────┘
```

---

## 📊 Complete Field Reference

### All Fields and Their Usage

| Field Name | Type | Required | Website Display | Admin Display |
|-----------|------|----------|----------------|---------------|
| `name` | Text | ✅ Yes | Room title everywhere | Card title |
| `category_label` | Text | ❌ No | Category badge | Badge above name |
| `description` | Text | ❌ No | Room details page | Card subtitle |
| `capacity` | Number | ✅ Yes | Amenities section | Info row |
| `size` | Text | ❌ No | Room card & details | Info row |
| `base_price` | Number | ✅ Yes | Price badge | Highlighted price |
| `bed_type` | Text | ❌ No | Room card | Info row |
| `star_rating` | Number (1-5) | ❌ No | Star icons | Star icons |
| `amenities` | Array | ❌ No | Amenities list | Tags |
| `total_rooms` | Number | ❌ No | Not shown | Availability info |
| `images` | Array | ❌ No | All images | First image |
| `check_in_time` | Text | ❌ No | Check In section | Not shown |
| `check_out_time` | Text | ❌ No | Check Out section | Not shown |
| `early_check_in` | Boolean | ❌ No | Check In section | Not shown |
| `house_rules` | Text | ❌ No | House Rules section | Not shown |
| `children_policy` | Text | ❌ No | Children section | Not shown |

---

## 🎯 Quick Reference: What Goes Where

### For Room Listing Page
**Must have:**
- `name` - Room title
- `base_price` - Price per night
- `images[0]` - At least one image

**Should have:**
- `category_label` - Category badge
- `size` - Room size
- `bed_type` - Bed information
- `star_rating` - Quality rating

### For Room Details Page
**Must have:**
- `name` - Room title
- `description` - Full description
- `images[]` - Multiple images

**Should have:**
- `amenities[]` - List of amenities
- `check_in_time` - Check-in information
- `check_out_time` - Check-out information
- `house_rules` - Rules and regulations
- `children_policy` - Children policy

### For Admin Management
**Must have:**
- `name` - Room title
- `base_price` - Base price
- `capacity` - Guest capacity

**Should have:**
- `total_rooms` - Inventory count
- `images[]` - Room photos
- All other fields for complete information

---

## 💡 Tips for Data Entry

### Category Label
- Keep it short (1-3 words)
- Use uppercase for consistency
- Examples: "LUXURY ROOM", "DELUXE SUITE", "PREMIUM ROOM"

### Room Name
- Use title case
- Be descriptive but concise
- Examples: "Delux Family Rooms", "Double Suite Rooms", "Suprior Bed Rooms"

### Size
- Include unit of measurement
- Be consistent across all rooms
- Examples: "500 SQ FT/Rooms", "450 sq ft", "300 SQ FT/Rooms"

### Bed Type
- Specify number and type
- Examples: "2 King Bed", "1 Queen Bed", "2 Single Beds"

### Amenities
- Use comma-separated values
- Be consistent with naming
- Examples: "WiFi, AC, TV, Mini Bar, Swimming Pool, Gym facilities"

### Check-in/Check-out Times
- Be specific and clear
- Include flexibility if applicable
- Examples: 
  - Check-in: "9:00 AM - anytime"
  - Check-out: "Before noon"

### House Rules
- List important rules clearly
- Use bullet points or line breaks
- Example: "No smoking\nNo pets\nQuiet hours from 10 PM to 7 AM"

### Children Policy
- Be clear about age limits
- Mention extra bed availability
- Example: "Children of all ages are welcome. Extra beds available upon request for an additional charge."

---

**Last Updated:** November 8, 2025
**Version:** 1.0

