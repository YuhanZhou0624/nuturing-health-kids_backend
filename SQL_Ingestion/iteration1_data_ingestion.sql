-- Drop the table if it already exists
DROP TABLE IF EXISTS guidelines_summary;

-- Create the guidelines_summary table
CREATE TABLE guidelines_summary (
    id INT PRIMARY KEY IDENTITY(1,1),
    age_group VARCHAR(50),
    physical_activity NVARCHAR(MAX),
    sedentary_time NVARCHAR(MAX),
    screen_time NVARCHAR(MAX),
    sleep NVARCHAR(MAX)
);

-- Insert data based on the official guidelines
INSERT INTO guidelines_summary (age_group, physical_activity, sedentary_time, screen_time, sleep)
VALUES
-- Infants (Birth to 12 months)
('Infants (Birth to 12 months)',
 'Several times a day with supervised interactive floor-based play, including at least 30 minutes of tummy time spread throughout the day while awake.',
 'Should not be restrained for more than 1 hour at a time (e.g., in a stroller, car seat).',
 'Screen time is not recommended.',
 '0 to 3 months: 14 to 17 hours; 4 to 11 months: 12 to 16 hours, including naps. Consistent sleep and wake-up times are recommended.'),

-- Toddlers (1 to 2 years)
('Toddlers (1 to 2 years)',
 'At least 180 minutes spent in a variety of physical activities, including energetic play, spread throughout the day; more is better.',
 'Should not be restrained for more than 1 hour at a time or sit for extended periods.',
 'For those younger than 2 years, sedentary screen time is not recommended. For those aged 2 years, sedentary screen time should be no more than 1 hour; less is better.',
 '11 to 14 hours of good-quality sleep, including naps, with consistent sleep and wake-up times.'),

-- Preschoolers (3 to 5 years)
('Preschoolers (3 to 5 years)',
 'At least 180 minutes spent in a variety of physical activities, of which at least 60 minutes is energetic play, spread throughout the day; more is better.',
 'Should not be restrained for more than 1 hour at a time or sit for extended periods.',
 'Sedentary screen time should be no more than 1 hour; less is better.',
 '10 to 13 hours of good-quality sleep, which may include naps, with consistent sleep and wake-up times.'),

-- Children and Young People (5 to 17 years)
('Children and Young People (5 to 17 years)',
 'At least 60 minutes of moderate to vigorous physical activity every day, involving mainly aerobic activities. Vigorous activities, and those that strengthen muscle and bone, should be incorporated at least 3 days per week. Several hours of a variety of light physical activities should also be undertaken each day.',
 'Break up long periods of sitting as often as possible.',
 'Recreational screen time should be limited to no more than 2 hours per day; lower amounts are associated with additional health benefits.',
 '5 to 13 years: 9 to 11 hours per night; 14 to 17 years: 8 to 10 hours per night. Consistent sleep and wake-up times are recommended.')


select * from guidelines_summary;


DROP TABLE IF EXISTS melbourne_playgrounds;


CREATE TABLE melbourne_playgrounds (
    name TEXT,
    latitude REAL,
    longitude REAL,
    postcode INTEGER,
    features TEXT
);

INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Grant Street Playground', -37.82601063, 144.9683531, 3006, 'Sandpit, Carousel, Slide, Swing');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Docklands Park Playground', -37.82180099, 144.9472275, 3008, 'Carousels, platforms, swing, slide, public toilet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lincoln Square Playground', -37.80284132, 144.9626565, 3053, 'Swings, spinners, double slide, public toilet, picnic table, lots of shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Flagstaff Gardens Playground', -37.80952571, 144.9547187, 3003, 'Sandpit with diggers, spiral slide, swings, sandpit, balancing bridges, public toilet, barbecue, picnic table, shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Gardiner Reserve Playground', -37.79878859, 144.9439384, 3051, 'Multi-level play structure, climbers, see-saw, swings, cubby, barbecue, picnic tables, some shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Point Park Playground', -37.82307176, 144.9415831, 3008, 'Bells, Musical Wall, Sand pit, Swing, Carousel and Slide');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fawkner Park Toddler Playspace', -37.83903295, 144.9804756, 3141, 'Toddler playspace - slide, swings');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Neill Street Reserve', -37.7952074, 144.9697031, 3053, 'swing');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Warun Biik Playground', -37.79616818, 144.9267598, 3031, 'Wooden structure, walkway, tic-tac-toe, wave slide, spiral ladder, springer, picnic tables, barbecue, water tap');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ievers Reserve Playground', -37.79652623, 144.9527729, 3052, 'Swings, rocker, fort, slide and climbing features, public toilet, lots of shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Powlett Reserve Playground', -37.81158138, 144.9865706, 3002, 'Fort tower, sand pit, 4-way spring rocker, swings, tic-tac-toe, chalkboard, public toilet, picnic table, some shade, disabled access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('North Melbourne Recreation Reserve Play Court', -37.79980317, 144.9414655, 3051, 'Play court space with basketball backboard only');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fawkner Park East', -37.84066822, 144.984029, 3141, 'Climber, see saws, spring rider, spring rocker, swings, chin up bars, some shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Robertson Street Park Playground', -37.79319152, 144.9324166, 3031, 'Swing, spring riders, combination unit');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Parsons Reserve Playground', -37.79019168, 144.9310811, 3031, 'Swing, spring riders, combination unit');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('North Melbourne Recreation Reserve Multi Purpose Court', -37.79883074, 144.9403322, 3051, 'Basketball rings, synthetic surface');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fitzroy Gardens Playground', -37.81174494, 144.9818268, 3002, 'Dragon slide, sandpit, giraffe swing, public toilet, lots of shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Wharfs Landing Park', -37.8220676, 144.9365419, 3008, 'Information not available');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kensington Hall Reserve Playground', -37.78903785, 144.9284358, 3031, 'Swing');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Canning and Palmerston Streets Playground', -37.79630623, 144.9728012, 3053, 'Play panel and small stage area. Some disabled access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Riverslide Skate Park', -37.82049084, 144.973027, 3004, 'Concrete skate ramp, public toilet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bellair Street Reserve Playground', -37.79525908, 144.9307814, 3031, 'Spring rocker, swings, platform, slide, picnic table');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Buluk Park Playground', -37.82028512, 144.9408831, 3008, 'Cubby houses, climbing ropes, metal slide, water play, musical tiles, grassy space, seating, tables, water tap');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Princes Park South Playground', -37.7853857, 144.9627593, 3054, 'Tower platforms, sandpits, rockers, see saw, slide, boardwalk, fitness track, public toilet, barbecue, picnic table, some shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('NaturePlay Playground Royal Park', -37.79504473, 144.9517539, 3052, 'Rope course, logs, rope nets, slides, swings, grassy hill, water play, sandpit, climbing structure, dinosaur skeleton, rocks, logs, picnic tables, paths');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Galada Avenue Reserve Playground', -37.77958239, 144.9397599, 3052, 'Spring rider, swing, carousel, combination unit');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bayswater Road Park Playground', -37.79377873, 144.9235959, 3031, 'Swings, rockers, slides, play units with mirror panel, abacus, shop front, clock and steering wheel, rubber pathways, barbecue, picnic table, shade, disabled access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('The Crescent Reserve Playground', -37.79465499, 144.9191945, 3008, 'Basketball court');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Liddy Street Reserve Playground', -37.79003674, 144.9256729, 3031, 'Combination unit, spring rider');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Boyd Community Hub', -37.826114, 144.9616347, 3006, 'Swings, slide, rock wall, monkey bars, carousel, see saw, sand pit, tunnels and barrels.  Temporary basketball court with backboard and ring');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Holland Park Playground', -37.79788702, 144.925942, 3031, 'Pirate ship play structure, rocking swing, rocking table, see saw, spinner, public toilet, barbecue, picnic table, lots of shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Victoria Green Playground', -37.82015371, 144.9447608, 3008, 'Sandpit, digger, ladders, slide, sand station, water play, grassy area, seating, water tap, metal wall');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fawkner Park North East', -37.83879373, 144.9850522, 3141, 'Chin up bar, parallel bars, balance beam, some shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Princes Park North Playground', -37.78122153, 144.9621435, 3054, 'Swing, spring riders, see saw');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Mercantile Parade and Tankard Street Playground', -37.7966153, 144.9206051, 3031, 'Swing, see saw, small tower, shade structure, stockyard style fencing');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('North Melbourne Community Centre Playground', -37.79356616, 144.9400825, 3051, 'Combination units, swing, barbeque, some shade');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Birrarung Marr Artplay', -37.81814902, 144.9712309, 3000, 'Rock and rope climbing features, swinging hammocks, liberty swing for wheelchairs, quiet areas and active play areas, public toilet, picnic table, some shade, disabled access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Mercantile Parade and Newman Street Playground', -37.79542805, 144.9208833, 3031, 'Slide, sheep sculptures');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Carlton Gardens Playground', -37.80209629, 144.9706746, 3053, 'Cubby with slide, swings, track glide, sandpit, climbing frame, some shade, disabled access, public toilet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ron Barassi Senior Park Playground', -37.81652273, 144.933755, 3008, 'Climbing structure, slides, rope bridges, nest swing, springers, sand digger, rope net, scrambling wall, sandpit, pulleys, water play, soccer pitches, pavilion, barbecue, picnic tables, toilets, baby change table, parking, walking circuit, water fountain, step-free access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Station Street Park Playground', -37.79728503, 144.9739867, 3053, 'Climbers ');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Hawke & Adderley Streets Playground', -37.80876587, 144.9447964, 3003, 'Slides, carousel, excavator, sandplit and swings');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eades Park Playground', -37.80718322, 144.951592, 3003, 'Fitness track, slide, rockers, climbing features, lots of shade, some disabled access');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Manningham Street Playground', -37.78509789, 144.9420312, 3052, 'Wooden tower, slide, swing, rockers, stepping posts, grassed areas');

-- select * from melbourne_playgrounds;

-- DROP TABLE IF EXISTS melbourne_playgrounds;


-- CREATE TABLE melbourne_playgrounds (
--     name TEXT,
--     latitude REAL,
--     longitude REAL,
--     postcode INTEGER,
--     features TEXT
-- );

INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sweeney Reserve Netball Poles', -38.03855610158096, 145.3250299760462, 3806, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sweeney Reserve Netball Poles', -38.03858580386815, 145.325261752725, 3806, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Power Reserve Netball Pole', -37.98171521103865, 145.2435866786036, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Tooradin Recreation Reserve Netball Poles', -38.20946257019064, 145.3754318120446, 3980, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Tooradin Recreation Reserve Netball Poles', -38.20949022280668, 145.3756793213852, 3980, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Edwin Flack Reserve Netball Poles', -38.02950836909203, 145.3638459679621, 3806, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kingsmere Drive Reserve B/Ball Half Court', -38.05937644543236, 145.3603121624263, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Blind Bight Foreshore and Carpark B/Ball Half Court', -38.21437353168262, 145.3425518932368, 3980, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Arleon Crescent Reserve B/Ball Half Court', -38.09788497508305, 145.2876117081952, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fairbairn Road and Valepark Crescent Reserve B/Ball Half Court', -38.10799571823078, 145.2713391528459, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Netball Poles', -38.12254684933917, 145.310408110797, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Netball Poles', -38.12257826936808, 145.3106569434362, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('McGuigan Drive Reserve B/Ball Half Court', -38.10631048763218, 145.2591095484177, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Essex Park Drive Reserve B/Ball Half Court', -37.96687988430346, 145.2372186222317, 3802, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('James Wyman Place Reserve B/Ball Half Court', -38.04120685004953, 145.2792445346065, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Robert Booth Reserve Netball Poles', -38.03084488139617, 145.2581220622165, 3976, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Robert Booth Reserve Netball Poles', -38.03082390001066, 145.2580438307075, 3976, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lake View Drive Reserve B/Ball Half Court', -38.04495141133009, 145.289743533751, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ashford Close Reserve B/Ball Half Court', -38.02487761809754, 145.2536098987886, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Wood Road Reserve B/Ball Half Court', -38.05107051793539, 145.3150321178808, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Springs Wetlands Reserve B/Ball Half Court', -38.06384599538588, 145.3298340275192, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ray Bastin Reserve BMX Track', -38.03351173795559, 145.3067445640491, 3805, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Waverley Park Drive and Lawless Drive Reserve Rebound Wall', -38.07047198030922, 145.2729413964838, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fountain Gate Tennis Club Courts 1 & 2', -38.01707728586821, 145.2953453696601, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fountain Gate Tennis Club Courts 3 & 4', -38.0170022186387, 145.2957497820494, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fountain Gate Tennis Club Courts 5 & 6', -38.01730330809923, 145.295704184398, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Tennis Club Court 6', -38.0266636970582, 145.3546946891077, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Houlder Avenue Reserve B/Ball Half Court', -38.13269245701009, 145.2933206207458, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Warneet BMX Track', -38.21920008333002, 145.3141263392821, 3980, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ken Browne Reserve BMX Track', -38.00991443021731, 145.285703925457, 3805, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Elizabeth Street and Wisteria Court Reserve Rebound Wall', -38.07696097417471, 145.2787694858071, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ackland Park & Wetland Reserve BMX Track', -37.98124686379978, 145.315467465185, 3804, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kalora Park Oval Netball Poles', -37.99118506852074, 145.3039972056144, 3804, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Emu Bush Drive Reserve B/Ball Half Court', -38.11520175846484, 145.2498382715832, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Alice Mary Road Reserve B/Ball Half Court', -38.11137870487542, 145.2434651977582, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Archers Field Drive Reserve B/Ball Half Court', -38.11168860618049, 145.3056309518349, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Elmsford Crescent Reserve Rebound Wall', -38.09849548404711, 145.2514515075422, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Marriott Waters Sports Reserve Netball Court', -38.07324722075295, 145.2503442891687, 3975, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pearcedale Tennis Club Courts 1 & 2', -38.20441868730509, 145.2290533337664, 3912, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pearcedale Tennis Club Courts 3 & 4', -38.20467603195159, 145.2294687821462, 3912, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Warneet Tennis Club Court 2', -38.21898180161423, 145.3131750643993, 3980, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cranbourne South Tennis Club Court 2', -38.14671976560355, 145.2330686254573, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Harkaway Tennis Club Courts 1 & 2', -38.00140815464191, 145.3427578730721, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Endeavour Hills Tennis Club Courts 1 & 2', -37.98679505960449, 145.2607564242241, 3802, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Doveton Tennis Club Courts 1 & 2', -37.99705213691718, 145.2443045069978, 3177, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Doveton Tennis Club Courts 3 & 4', -37.99674130236577, 145.2443897655383, 3177, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Doveton Tennis Club Courts 5 & 6', -37.99644493964842, 145.2444666964358, 3177, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cranbourne Tennis Club Courts 5 & 6', -38.11427582836303, 145.2802930881299, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Club Courts 4 & 5', -38.1179381248795, 145.3074642348987, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Club Courts 6 & 7', -38.11898985855375, 145.3076324190448, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Club Courts 8 & 9', -38.1190108795849, 145.3072404501614, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Carlisle Park Netball 1', -38.08590201326209, 145.2913351846361, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Carlisle Park Netball 2', -38.08590201326209, 145.2913351846361, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Linden Tree Way Rebound Wall', -38.0861077626843, 145.3220799738137, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Revelwood Way Reserve Half Court', -38.07970103693229, 145.3672326647392, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Viewbank Reserve Half Basketball Court', -38.07999948701929, 145.3378714408637, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bunjil Place Ping Pong Table', -38.02021221511247, 145.3005732677734, 3805, 'Pinpong');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Hallam Tennis Club', -38.00150823803563, 145.2688677103396, 3803, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Nelson Street Reserve B/Ball Half Court', -38.12665034473734, 145.3029474565488, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Synthetic Cricket Pitch @ Edwin Flack Reserve', -38.02871134249173, 145.365054511208, 3806, 'Cricketnet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Springs Tennis Court', -38.06912496801849, 145.3266822715989, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Tennis Club Court 2', -38.02684319541972, 145.3559228070202, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Reid Res Petanque Playing Area  @Oak Avenue Doveton', -37.9971105501016, 145.2414175323954, 3177, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 10', -37.99637837953279, 145.2469001205731, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 9', -37.99668082175966, 145.2467913989738, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 7', -37.99734851416142, 145.2465650587474, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Court Robinson Rec Reserve', -37.99722791889315, 145.2434906109273, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Tooradin Cricket Practice Nets', -38.21035788071126, 145.3768058021219, 3980, 'Cricketnets');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 4', -38.03854506845387, 145.3293052756111, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 8', -38.03784046344452, 145.3289969979255, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ryelands Drive Reserve Dog Park', -38.01838461019148, 145.3173016738951, 3806, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Gunns Road Reserve Dog Park', -37.99699860897199, 145.2646232264524, 3803, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Edgar Avenue Reserve BBALL', -38.12488844919678, 145.2401071770248, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eliston Reserve Basketball Court', -38.12394728556901, 145.3326688654832, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Swanston Street Reserve Pump Track', -38.12781746878405, 145.329560884414, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kershaw B/Ball 1/2 Court', -38.05537626060419, 145.2868604513372, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ashtead Street Reserve B/Ball 1/2 Crt', -38.12522145332443, 145.3494901407324, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Timbarra Basket Ball Half Court', -38.02448773852819, 145.3258347508049, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Botanic Ridge Reserve Half Court', -38.14570206408956, 145.249584517544, 3977, 'Bball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cavern Reserve Half Court', -38.11315327431014, 145.3691937385359, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Somme Crescent B/Ball & Netball half courts', -38.05527774692035, 145.3214046371914, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Hampton Park Tennis Club Courts 1 to 6', -38.03108434611048, 145.2599027681264, 3976, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Meridian Central Basketball Court', -38.10388935510328, 145.3601678131344, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pearcedale Recreation Reserve BMX Track', -38.20267550544554, 145.2287153466679, 3912, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Amber Drive Reserve B/Ball Half Court', -38.0477283748129, 145.273229416949, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sue Court Reserve B/Ball Half Court', -38.03259947982737, 145.2733599439687, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Banjo Paterson Reserve B/Ball Half Court', -38.05478839205252, 145.2494728730558, 3975, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren South Tennis Club Courts 1 & 2', -38.05095925648754, 145.2884049720035, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Glenburn Drive Reserve B/Ball Half Court', -38.01368157222681, 145.2792936900629, 3803, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('John Byron Reserve B/Ball Half Court', -38.03992881392807, 145.3051210246391, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kirsty Lottkowitz Reserve BMX Track', -38.02347670105468, 145.3267422202679, 3806, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('The Terrace Reserve Tennis Court', -38.05796496515025, 145.3149533415557, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 11 & 12', -38.03878679356028, 145.3285640534195, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eddie Barron Reserve BMX Track', -38.04888798190625, 145.345836055385, 3806, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Edwin Flack Athletics Track', -38.02969246441823, 145.3615159588387, 3806, 'Athletic');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Penhurst Street Reserve B/Ball Half Court', -37.9996727245993, 145.2958438984089, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Courtenay Avenue and Hoysted Avenue Reserve BMX Track', -38.07921840890561, 145.279616824824, 3977, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kanooka Grove Reserve BMX Track', -37.99663680474045, 145.2357616964115, 3177, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Essex Park Drive Reserve BMX Track', -37.96668147991699, 145.23519007512, 3802, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ern Barker Reserve BMX Track', -38.00351273913834, 145.2836190485526, 3803, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Scarborough Avenue Reserve BMX Track', -38.10822124729816, 145.2625871515032, 3977, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Jacksons Road Reserve B/Ball Half Court', -37.99837206229837, 145.3074833469812, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Wurundjeri Boulevard Reserve B/Ball Half Court', -38.07240044739495, 145.3510783281642, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Glover Rec Reserve Rebound Wall', -38.15581959414055, 145.3032051105791, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cherryhills Drive Reserve Rebound Wall', -38.11898689264753, 145.2607956693763, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sierra Walk Reserve B/Ball Half Court', -38.08095823944989, 145.2990121942694, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sabel Reserve B/Ball Half Court', -38.07480072397345, 145.3128659669406, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Stanford Street Reserve B/Ball Half Court', -38.09638200751513, 145.2518924441501, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Selandra Boulevard Reserve B/Ball Half Court', -38.11530910163308, 145.3233909747452, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Warneet Tennis Club Court 1', -38.2189691438851, 145.3134039563082, 3980, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Tooradin Tennis Club Court 5', -38.21126104600541, 145.3748635177271, 3980, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cranbourne South Tennis Club Courts 3 & 4', -38.14669634622435, 145.2328732454534, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren North Tennis Club Courts 5 & 6', -37.97889920300869, 145.3150745697949, 3804, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Endeavour Hills Tennis Club Courts 3 & 4', -37.98674252814906, 145.2603257386761, 3802, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Endeavour Hills Tennis Club Courts 5 & 6', -37.9864245265445, 145.2606867555887, 3802, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Endeavour Hills Tennis Club Courts 7 & 8', -37.98648575791501, 145.261107871372, 3802, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Hallam Tennis Club Courts 4 & 5', -38.00146789258, 145.2685216223347, 3803, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cranbourne Tennis Club Courts 1 to 4', -38.11397266818079, 145.2804002310489, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Club Courts 10 to 12', -38.11937326141923, 145.3071655801308, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Carlisle Park Cricket Nets', -38.08717996830775, 145.2930621148741, 3977, 'Cricketnet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Reid Reserve Cricket Nets', -37.99744881792699, 145.243445863598, 3177, 'Cricketnet');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Vantage Avenue Reserve Fooseball Table', -38.10520878221855, 145.3235460230793, 3978, 'Foosball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Junction Village Rec Reserve BMX Track', -38.13597691310483, 145.293623655105, 3977, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Linden Tree Way Half Court', -38.08635947418804, 145.3214799373018, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Complex Basketball', -38.11206598815203, 145.297568065038, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Livvi''s Place Reserve Half Court', -38.07245105002021, 145.2485462383673, 3975, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fitzwilliam Reserve Basketball Court', -38.11490377569175, 145.3327473357454, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Deoro Parade Reserve Hardcourt', -38.10963068912298, 145.3352009902571, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pump House Crescent Reserve Basketball', -38.12196122305448, 145.3345898277055, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bimberry Circuit Fenced Off Lead Dog Area', -38.12368573881629, 145.3250473058838, 3978, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Springs Basketball Half Court', -38.06913608736793, 145.3262605319134, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren North Tennis Court 2', -37.97912806009882, 145.3156332391819, 3804, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren North Tennis Court 2', -37.97894767818519, 145.3154939616385, 3804, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kilora Reserve Ping Pong Table', -38.07980361614367, 145.3669549885491, 3978, 'Pinpong');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Dartmoor Reserve B/Ball Half Court', -38.09502644360109, 145.2988485902243, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Dolomite Reserve B/Ball Half Court', -38.09393514812451, 145.3458942053327, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 4', -37.99663404539353, 145.2465789747385, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 2', -37.99730178160105, 145.2463495314465, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 5', -37.99760692325874, 145.2462507931192, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 6', -37.99765117524218, 145.2464632880152, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Clydevale Reserve Multi-Purpose Court', -38.1072317060684, 145.3339456203626, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Club Courts 1', -38.11765041197523, 145.3080798130115, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Court 2', -38.11762623426131, 145.3078966380006, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Tennis Court 3', -38.11760300223209, 145.3077149074051, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Court 1@ Kilora Rec Reserve', -38.08078612387396, 145.3758564229008, 3978, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 2', -38.03888771543505, 145.3292313870214, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 6', -38.03821933036841, 145.3293658181133, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Thoroughbred Drive Reserve BBALL', -38.10636703708268, 145.3381178657127, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Evica Road Reserve B/Ball Half Court', -38.07840243941323, 145.3530568824293, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Melville Park B''Ball Half Court', -38.0395968394292, 145.3506505761904, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lochaven Netball Courts', -38.10414698811632, 145.2458023063095, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fairhaven Boulevard Playground', -38.15541982025909, 145.3026281762396, 3977, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Princeton Park ', -38.14426098209119, 145.2605399408238, 3977, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Amber Crescent Reserve B/Ball Half Court', -38.00139465380098, 145.3162038261788, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Power Reserve B/Ball Half Court', -37.98173928012414, 145.2437960355438, 3177, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Warneet Recreation Reserve B/Ball Half Court', -38.21885100398681, 145.3128027620751, 3980, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bill Hudson Reserve B/Ball Half Court', -38.03336068170483, 145.3397445797429, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eddie Barron Reserve B/Ball Half Court', -38.04867446987278, 145.3454957171666, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cannons Creek B/Ball Half Court', -38.21339322009562, 145.3152562680607, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eliza Street Reserve B/Ball Half Court', -38.07879809944252, 145.2903672712521, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Netball Poles', -38.12219027962294, 145.3102295162789, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Waverley Park Drive and Lawless Drive Reserve B/Ball Half Court', -38.07050667528006, 145.2726197824204, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Glover Rec Reserve B/Ball Half Court', -38.1558693245918, 145.3031294288764, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lochalsh Court Reserve B/Ball Half Court', -37.96465126545121, 145.2649937963629, 3802, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cairns Road Reserve BMX Track', -38.03858706681056, 145.2585961233353, 3976, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ashfield Drive Reserve B/Ball Half Court', -38.05307570086723, 145.3368562887904, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Edwin Flack Reserve Netball Poles', -38.02947937890309, 145.3636145633044, 3806, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Timbertop Park B/Ball Half Court', -38.01968574824507, 145.3213994248528, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cherryhills Drive Reserve B/Ball Half Court', -38.1190807163627, 145.2609559804028, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lawson Poole Reserve B/Ball Half Court', -38.08370518244868, 145.2739443102331, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('John Pandazopoullos Public Hall B/Ball Half Court', -37.99263009507813, 145.2380731170425, 3177, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Robinson Rec Reserve Netball Poles', -37.9957165411085, 145.2425393158075, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Georgette Crescent Reserve B/Ball Half Court', -37.97407717930705, 145.2686791067453, 3802, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Clive Street Reserve B/Ball Half Court', -38.03455878733688, 145.2497460217054, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Banjo Paterson Reserve BMX Track', -38.05495159445608, 145.2490740893902, 3975, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren South Tennis Club Courts 3 & 4', -38.05096373138496, 145.2887727247314, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren South Tennis Club Courts 5 & 6', -38.05053930086072, 145.2894123227499, 3805, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Buckeye Drive Reserve B/Ball Half Court', -38.0162274334177, 145.283357578382, 3803, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Norfolk Drive Reserve B/Ball Half Court', -38.03684466364734, 145.3144496396733, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Trenton Court Reserve B/Ball Half Court', -38.0622895971408, 145.2823351712697, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Max Pawsey Reserve B/Ball Half Court', -38.01611201789429, 145.2983849747244, 3805, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('KM Reedy Reserve BMX Track', -38.02058858093331, 145.2491867057362, 3976, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Tennis Club Courts 3 to 5', -38.02667375688046, 145.3548093940818, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Tennis Club Court 7', -38.02663540042998, 145.3543899337193, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Ern Barker Reserve B/Ball Half Court', -38.00346735372997, 145.283415566348, 3803, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kalora Park Netball Poles', -37.99135829758185, 145.3041200337581, 3804, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pearcedale Recreation Reserve BMX Track', -38.20278568216815, 145.227807255469, 3912, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cherryhills Drive Reserve BMX Track', -38.12066197226612, 145.2608129328051, 3977, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Amber Crescent Reserve BMX Track', -38.00104832116357, 145.3167375841044, 3805, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kevin Adlard Reserve BMX Track', -37.99214403622756, 145.2526102386886, 3177, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Baden Powell Reserve BMX Track', -37.99424681963145, 145.2465916360686, 3177, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Arleon Crescent Reserve Rebound Wall', -38.09798641357058, 145.2876724260732, 3977, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Kendall Drive Reserve Rebound Wall', -37.99741629954822, 145.2997169110045, 3805, 'Rebound');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Heather Grove Reserve B/Ball Half Court', -38.1087630062119, 145.3271163810715, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Bacchus Road Reserve B/Ball Half Court', -38.11581134996268, 145.2351845151319, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Rannoch Street Reserve B/Ball Half Court', -38.11734302341931, 145.3007736098244, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Selandra Boulevard Reserve B/Ball Half Court', -38.11539665159408, 145.3232570957884, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Pearcedale Tennis Club Courts 5 & 6', -38.20461345413167, 145.2286647673257, 3912, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Devon Meadows Tennis Club Courts 5 & 6', -38.15580220405906, 145.3032177316394, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Cranbourne South Tennis Club Court 1', -38.14671976560355, 145.2330686254573, 3977, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Harkaway Tennis Club Courts 3 & 4', -38.00243722692216, 145.3427192124962, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren North Tennis Club Courts 1 to 4', -37.97890541859228, 145.3151350000481, 3804, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Doveton Tennis Club Courts 7 to 9', -37.99601794501789, 145.244321279175, 3177, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Hallam Tennis Club Courts 1 to 3', -38.00140426819419, 145.2679913834181, 3803, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Springs Rec Reserve Netball', -38.07136026182871, 145.316470555923, 3805, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Aboriginal Gathering Place Ping Pong Table', -37.98516461138355, 145.238793430207, 3177, 'Pinpong');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('David Collins Drive Reserve Ping Pong Table', -37.99271556709372, 145.2687663686706, 3802, 'Pinpong');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Gunns Road Reserve BMX Track', -37.99722423027344, 145.2629922708919, 3803, 'Bmx');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Marriott Waters Sports Reserve Netball Court 2', -38.07328033468193, 145.2505713612271, 3975, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Casey Fields Athletics Track', -38.12251668869551, 145.3089634829534, 3977, 'Athletic');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Grand Belmond B/Ball Half Court', -38.12859665101094, 145.3212792251088, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Vantage Avenue Res B/Ball Half Court', -38.10536032468504, 145.3237363493039, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Fitzwilliam Reserve Tennis Court', -38.1148729522992, 145.3325015395049, 3978, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Aboriginal Gathering Place Half Court', -37.98518017867341, 145.2388134768423, 3177, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Noorat Place Reserve Basketball Half Court', -38.07591510357756, 145.326231965144, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Selandra Boulevard Reserve Fenced Off Lead Dog Area', -38.11593368496062, 145.3229820578613, 3978, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Berwick Tennis Club Court 1', -38.0265528142041, 145.3561729641245, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sweeny Reserve Tennis Court 9', -38.03812985795829, 145.3284980994417, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Sweeny Reserve Tennis Court 10', -38.03810527991333, 145.3283068614535, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Basketball Half Court Surface Arthur Wren Public Hall', -38.03370377626072, 145.2655486690684, 3976, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 3', -37.99697043955191, 145.2464636884597, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 5', -37.99633215046771, 145.2466782772193, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Olive Reserve (Jan Bateman Reserve) Netball Court 8', -37.99701469113441, 145.2466797782753, 3177, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Babylon Crescent Reserve B/Ball Half Court', -38.09822973632483, 145.3623887225199, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Lonhro Boulevard B/Ball Half Court', -38.08326842358935, 145.2389887583163, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Court 1@ Livingston Rec Reserve', -38.12154022054932, 145.2971223366054, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Court 2@ Livingston Rec Reserve', -38.12156917085324, 145.2973589203741, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Court 2@ Kilora Rec Reserve', -38.08082469700972, 145.3760831444287, 3978, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 1', -38.03886716143113, 145.3290595865161, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 5', -38.03820274528177, 145.3291846302718, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 7', -38.0378212518393, 145.3288158708027, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Glover Rec Reserve Netball Court 1@ Browns Rd Devon Meadows', -38.15547978275784, 145.3034694662245, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('MacDonalds Park Half Court', -38.1175102370996, 145.3436624698761, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Thoroughbred Drive Reserve Dogpark', -38.10638816283813, 145.3383451152129, 3978, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Edwin Flack Reserve B/Ball Half Court', -38.02948738435964, 145.3643595244534, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Carnival Boulevard Basketball Court', -38.076739766603, 145.3688960682404, 3806, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Banjo Park Basketball Half Court', -38.10281578620992, 145.3793377495741, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Tilion Park B''Ball Half Court', -38.10320357302957, 145.385615840528, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Netball Courts 1 & 2 @ Booring Rec Reserve', -38.1524232329585, 145.2879798668378, 3977, 'Netball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Verve Circuit Reserve Half Court/Rebound Wall', -38.11073804757731, 145.249784809653, 3977, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Portobello Reserve Basketball Court', -38.10327263891924, 145.3525277123723, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Portobello Reserve Tennis Court', -38.10358283974396, 145.3524873155756, 3978, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Smiths Park Clyde North', -38.11959580435969, 145.3295712525474, 3978, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Parkrise Blvd Half Court', -38.0991334059544, 145.382010226665, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Royal Botantical Garden', -38.21161987225998, 145.3746967953995, 3980, 'Dogpark');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Crosswater Blvd Reserve B/Ball Court', -38.08837062498824, 145.3516481777057, 3978, 'B/ball');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Narre Warren Tennis Club Courts 3', -38.03881181226846, 145.3290612309144, 3806, 'Tennis');
INSERT INTO melbourne_playgrounds (name, latitude, longitude, postcode, features) VALUES ('Eliston Reserve Half Tennis Court', -38.12362110886514, 145.3321230050671, 3978, 'B/ball');

select * from melbourne_playgrounds;