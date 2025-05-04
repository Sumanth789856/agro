CREATE TABLE disease_detections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    crop VARCHAR(255),
    disease VARCHAR(255),
    recommendations TEXT,
    image_path VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE predictions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    n FLOAT,
    p FLOAT,
    k FLOAT,
    temperature FLOAT,
    humidity FLOAT,
    ph FLOAT,
    rainfall FLOAT,
    predicted_crop VARCHAR(100),
    prediction_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from crop_rotations;
CREATE TABLE crop_rotations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    crop_name VARCHAR(100),
    n FLOAT,
    p FLOAT,
    k FLOAT,
    soil_type VARCHAR(100),
    season VARCHAR(100),
    temperature FLOAT,
    rainfall FLOAT,
    humidity FLOAT,
    predicted_next_crop VARCHAR(100),
    prediction_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

