CREATE TABLE Product
(
    prodId                 INTEGER         AUTO_INCREMENT,
    prodName                VARCHAR(200)    NOT NULL,
    prodPicNameSmall        VARCHAR(200)    NOT NULL,
    prodPicNameLarge        VARCHAR(200)    NOT NULL,
    prodDescripShort        VARCHAR(1000),
    prodDescripLong         VARCHAR(3000),
    prodPrice               DECIMAL(8,2)    NOT NULL,
    prodQuantity            INTEGER         NOT NULL,
    CONSTRAINT p_pid_pk     PRIMARY KEY (prodId)          
);



INSERT INTO Product 
(prodName, prodPicNameSmall, prodPicNameLarge, prodDescripShort, prodDescripLong, prodPrice, prodQuantity)
VALUES 
('Google Nest Home Security Camera', 'googlenestcam_small.jpg', 'googlenestcam_large.jpg', 'Nest Cam gives you different alerts for different types of activity. Set Activity Zones to get notified about specific areas. Know what is happening, 24/7. Check up on things, talk to people who you care about and see a fuller picture in clear 1080p HD video – day or night.', 'The Indoor Nest Cam security camera knows the difference between a person and a pet, and alerts you about the things that matter to you. 24/7 live view shows you what is happening from anywhere in the Google Home app. And with up to three hours of free event video history, you can go back and see what you have missed.
Know what is happening, 24/7. Use the Google Home app to check up on things from anywhere with live 1080p HD video. And HDR and night vision give you a clear image even in bright sunlight and low light.
Go back in time. See what happened in the Google Home app with three hours of free event video history. Or add a Nest Aware subscription to get up to 60 days of video history.
Set it up in minutes. Nest Cam plugs into most indoor power outlets. Just download the Google Home app, and set up your camera in a few quick steps.
Your privacy comes first. With 2-Step Verification and video encryption, Nest Cam home security cameras help make sure your privacy is protected.
Availability and performance of certain features and services are service- device and network-dependent and may not be available in all areas.
Designed to fit in anywhere. The built-in tabletop stand, wall mount and multi-directional hinge give you the perfect angle, no matter where you put it.
', 89.99, 35),
('Ring Alarm Motion Detector', 'ringalarmmotiondetector_small.jpg', 'ringalarmmotiondetector_large.jpg', 'The Ring Alarm Motion Detector expands your Ring Alarm Kit and adds an extra layer of security to your home. When your Ring Alarm system is armed, the Motion Detector sends instant alerts to your phone and tablet whenever motion is detected at home. The Motion Detector is a simple addition to your Ring Alarm Kit that installs in minutes.', 'Set your security in motion
Mount Motion Detectors to room corners or flat walls and choose to get audio or mobile notifications whenever motion is detected inside your home. The Ring Alarm Motion Detector connects to your Ring Alarm Base Station and mounts to any indoor wall or corner, so you will always know when there is activity at home.', 29.00, 30),
('Google Nest Learning 3rd Generation Thermostat - Steel', 'googlenestthermostat_small.jpg', 'googlenestthermostat_large.jpg', 'The 3rd-generation Nest Thermostat learns the temperatures that you like, turns itself down when you are away and connects to your phone. It has a big, sharp display. It controls your hot water tank. And it helps save energy.', 'Your thermostat controls 60% of your energy bill. So should not it help you save energy? The Nest Learning Thermostat does. It gets to know the temperature that you like while you are at home, and turns itself down when you are away. It even learns how your home warms up or how draughty it is, so it only uses the energy that it needs. Now the Nest Thermostat does something new, called Farsight. It will light up to tell you the temperature, weather or time. You can also control your hot water tank with the Nest Thermostat.
Google Nest compared with thermostats running at a constant temperature. Energy savings are not guaranteed and depend on energy usage, weather, and other factors.
The Nest App shows you how much energy you use every day in Energy History, and every month in your Home Report. So you can see when you use more energy, such as at the weekend or Monday nights, and how to use less.', 219.00, 50),
('Amazon Echo Pop 2023 Smart Speaker with Alexa', 'amazonecho_small.jpg', 'amazonecho_large.jpg', 'This compact Bluetooth smart speaker with Alexa features a full sound that is great for bedrooms and small spaces. Small enough to blend in and mighty enough to stand out.', 'Introducing Echo Pop. This compact Bluetooth smart speaker with Alexa features a full sound that is great for bedrooms and small spaces. Small enough to blend in and mighty enough to stand out. Control music with your voice. Make any space a smart space.
Ask Alexa to play music, audiobooks, and podcasts from your favourite providers like Amazon Music, Spotify and more. Connect your smartphone via Bluetooth to stream throughout your space.
Use your voice or the Alexa app to easily control your compatible smart home devices like plugs or lights.
Life just got easier. Have Alexa set timers, check the weather, read the news, re-order paper towels, make calls, answer questions, and more.
', 44.99, 20);


DROP TABLE IF EXISTS Users;
CREATE TABLE Users (

    userId          INT                 AUTO_INCREMENT,
    userType        VARCHAR (20)        NOT NULL,
    userFName        VARCHAR (100)       NOT NULL,
    userSName       VARCHAR (100)       NOT NULL,
    userAddress     VARCHAR (200)       NOT NULL,
    userPostCode    VARCHAR (20)        NOT NULL,
    userTelNo       VARCHAR (20)        NOT NULL,
    userEmail       VARCHAR (100)       NOT NULL UNIQUE,
    userPassword    VARCHAR (100)       NOT NULL,
    CONSTRAINT      u_uid_pk            PRIMARY KEY (userId)
);


INSERT INTO 
Users
(userType, userFName, userSName, userAddress, userPostCode, userTelNo, userEmail, userPassword)
VALUES
('Admin', 'Prasid', 'Upadhya', '115 New Cavendish St', 'W1W 6UW', '07528098964', 'prasid@homteq.com', 'prasid09@'),
('Customer', 'Jefferey', 'Williams', '74 North Street', 'HA38 3CR', '07488994438', 'jeff@uow.com', 'westminster74@'),
('Customer', 'Durk', 'Banks', '985 Church Street', 'EC59 0EY', '07433750190', 'durk@uow.com', 'westminster985@');