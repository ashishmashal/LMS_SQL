-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Office
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Office
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Office` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Office` ;

-- -----------------------------------------------------
-- Table `Office`.`App_Parameters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`App_Parameters` (
  `App_para_Id` INT NOT NULL AUTO_INCREMENT,
  `Key_Type` VARCHAR(255) NOT NULL,
  `Key_Value` VARCHAR(45) NULL DEFAULT NULL,
  `Ket_Text` VARCHAR(45) NULL DEFAULT NULL,
  `Cur_Status` VARCHAR(45) NULL DEFAULT NULL,
  `Lastupd_User` VARCHAR(45) NULL DEFAULT NULL,
  `Lastupd_Stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  `Seq_Num` INT NOT NULL,
  PRIMARY KEY (`App_para_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Fellowship_Candidate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Fellowship_Candidate` (
  `Fellowship_Candidate_id` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(16) NOT NULL,
  `Middle_Name` VARCHAR(255) NOT NULL,
  `Last_Name` VARCHAR(32) NOT NULL,
  `EmailID` VARCHAR(255) NOT NULL,
  `Hired_City` VARCHAR(45) NOT NULL,
  `Degree` VARCHAR(45) NOT NULL,
  `Hired_Date` DATE NOT NULL,
  `Mobile_N0` INT NOT NULL,
  `Permanent_pincode` INT NOT NULL,
  `Hired_lab` VARCHAR(45) NOT NULL,
  `Attitude` INT NOT NULL,
  `Comm_remark` INT NOT NULL,
  `Knowledge_remark` INT NOT NULL,
  `Aggregate_Remark` INT NOT NULL,
  `Creator_stamp` VARCHAR(45) NOT NULL,
  `Creator_User` VARCHAR(45) NOT NULL,
  `Birthdate` DATE NOT NULL,
  `Is_Birthdate_Verified` VARCHAR(50) NOT NULL,
  `parent_Name` VARCHAR(255) NOT NULL,
  `Parent_Occupation` VARCHAR(45) NOT NULL,
  `Parent_Mobile_No` INT NOT NULL,
  `parant_Annual_Salary` VARCHAR(45) NOT NULL,
  `Local_Address` VARCHAR(255) NOT NULL,
  `Permanent_Address` VARCHAR(255) NOT NULL,
  `Photo_path` VARCHAR(45) NOT NULL,
  `Joining_Date` DATE NOT NULL,
  `Candidate_Status` VARCHAR(45) NOT NULL,
  `Personal_Info` VARCHAR(255) NOT NULL,
  `Bank_Info` VARCHAR(255) NOT NULL,
  `Educational_Info` VARCHAR(255) NOT NULL,
  `Document_Status` VARCHAR(45) NOT NULL,
  `Remark` INT NOT NULL,
  PRIMARY KEY (`Fellowship_Candidate_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Candidate_Bank_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Candidate_Bank_Details` (
  `Candidate_Bank_ID` INT NOT NULL AUTO_INCREMENT,
  `Candiate_Id` INT NOT NULL,
  `Bank_Name` VARCHAR(255) NOT NULL,
  `Account_No` VARCHAR(45) NOT NULL,
  `Is_Account_No_Verified` VARCHAR(45) NOT NULL,
  `IFSC_Code` VARCHAR(45) NOT NULL,
  `Is_IFSC_No_Verified` VARCHAR(45) NOT NULL,
  `Pan_No` VARCHAR(255) NOT NULL,
  `Is_Pan_No_Verified` VARCHAR(45) NOT NULL,
  `Addhaar_No` INT NOT NULL,
  `Is_Addhar_No_Verified` VARCHAR(45) NOT NULL,
  `Creator_stamp` VARCHAR(45) NOT NULL,
  `Creator_User` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Candidate_Bank_ID`),
  INDEX `fk_Candidate_Bank_Details_1_idx` (`Candiate_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Candidate_Bank_Details_1`
    FOREIGN KEY (`Candiate_Id`)
    REFERENCES `Office`.`Fellowship_Candidate` (`Fellowship_Candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Candidate_Document`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Candidate_Document` (
  `Candiate_Document_Id` INT NOT NULL,
  `Candidate_Id` INT NULL DEFAULT NULL,
  `Doc_type` VARCHAR(45) NULL DEFAULT NULL,
  `Doc_Path` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Candiate_Document_Id`),
  INDEX `fk_Candidate_Document_1_idx` (`Candidate_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Candidate_Document_1`
    FOREIGN KEY (`Candidate_Id`)
    REFERENCES `Office`.`Fellowship_Candidate` (`Fellowship_Candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Candidate_Qualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Candidate_Qualification` (
  `Candidate_Qualification_Id` INT NOT NULL AUTO_INCREMENT,
  `Candiate_Id` INT NULL DEFAULT NULL,
  `Diploma` VARCHAR(255) NOT NULL,
  `Degree_Name` VARCHAR(255) NULL DEFAULT NULL,
  `Is_Degree_Name_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Employee_Decipline` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Employee_Decipline_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Passing_Year` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Passing_Year_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Aggr_per` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Aggr_per_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Final_Year_Per` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Final_Year_Per_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Training_institute` VARCHAR(255) NULL DEFAULT NULL,
  `Is_Training_Institute_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Training_Duration_Month` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Training_Duration_Month_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Other_Training` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Other_Training_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Candidate_Qualification_Id`),
  INDEX `fk_Candidate_Qualification_1_idx` (`Candiate_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Candidate_Qualification_1`
    FOREIGN KEY (`Candiate_Id`)
    REFERENCES `Office`.`Fellowship_Candidate` (`Fellowship_Candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Company` (
  `Company_id` INT NOT NULL AUTO_INCREMENT,
  `Company_Name` VARCHAR(255) NOT NULL,
  `Location` VARCHAR(255) NOT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Company_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Tech_Type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Tech_Type` (
  `Tech_type_id` INT NOT NULL AUTO_INCREMENT,
  `Type_name` VARCHAR(255) NOT NULL,
  `Cur_Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Tech_type_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Tech_Stack`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Tech_Stack` (
  `Tech_Stack_id` INT NOT NULL AUTO_INCREMENT,
  `Tech_name` VARCHAR(255) NOT NULL,
  `Image_Path` VARCHAR(45) NULL DEFAULT NULL,
  `Framework` VARCHAR(45) NULL DEFAULT NULL,
  `Cur_Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Tech_Stack_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Maker_Program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Maker_Program` (
  `Maker_Program_id` INT NOT NULL AUTO_INCREMENT,
  `Program_Name` VARCHAR(255) NOT NULL,
  `Program_type` VARCHAR(45) NULL DEFAULT NULL,
  `Program_link` VARCHAR(45) NULL DEFAULT NULL,
  `Tech_Stack_id` INT NOT NULL,
  `Tech_type_id` INT NOT NULL,
  `Is_Program_approved` VARCHAR(45) NULL DEFAULT NULL,
  `Description` VARCHAR(255) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Maker_Program_id`),
  INDEX `fk_Maker_Program_1_idx` (`Tech_Stack_id` ASC) VISIBLE,
  INDEX `fk_Maker_Program_2_idx` (`Tech_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_Maker_Program_1`
    FOREIGN KEY (`Tech_Stack_id`)
    REFERENCES `Office`.`Tech_Stack` (`Tech_Stack_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Maker_Program_2`
    FOREIGN KEY (`Tech_type_id`)
    REFERENCES `Office`.`Tech_Type` (`Tech_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Company_Requiretment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Company_Requiretment` (
  `Company_Requirement_id` INT NOT NULL AUTO_INCREMENT,
  `Requested_Month` VARCHAR(255) NOT NULL,
  `Company_id` INT NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Doc_Verification` TINYINT NULL DEFAULT NULL,
  `Requirement_Doc_Path` VARCHAR(45) NULL DEFAULT NULL,
  `No_Of_Engg` INT NULL DEFAULT NULL,
  `Tech_type_id` INT NULL DEFAULT NULL,
  `Tech_Stack_id` INT NULL DEFAULT NULL,
  `Maker_Program_id` INT NULL DEFAULT NULL,
  `lead_id` INT NULL DEFAULT NULL,
  `ideation_engg_id` INT NULL DEFAULT NULL,
  `Buddy_Engg_id` INT NULL DEFAULT NULL,
  `Spacial_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Company_Requirement_id`),
  INDEX `fk_Company_Requiretment_1_idx` (`Company_id` ASC) VISIBLE,
  INDEX `fk_Company_Requiretment_2_idx` (`Tech_type_id` ASC) VISIBLE,
  INDEX `fk_Company_Requiretment_3_idx` (`Maker_Program_id` ASC) VISIBLE,
  INDEX `fk_Company_Requiretment_4_idx` (`Tech_Stack_id` ASC) VISIBLE,
  CONSTRAINT `fk_Company_Requiretment_1`
    FOREIGN KEY (`Company_id`)
    REFERENCES `Office`.`Company` (`Company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Company_Requiretment_2`
    FOREIGN KEY (`Tech_type_id`)
    REFERENCES `Office`.`Tech_Type` (`Tech_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Company_Requiretment_3`
    FOREIGN KEY (`Maker_Program_id`)
    REFERENCES `Office`.`Maker_Program` (`Maker_Program_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Company_Requiretment_4`
    FOREIGN KEY (`Tech_Stack_id`)
    REFERENCES `Office`.`Tech_Stack` (`Tech_Stack_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Candidate_Stack_Assignment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Candidate_Stack_Assignment` (
  `Candidate_Stack_Ass_id` INT NOT NULL AUTO_INCREMENT,
  `Company_Requirement_id` INT NOT NULL,
  `Candiate_Id` INT NOT NULL,
  `Assign_date` DATE NOT NULL,
  `Complete_date` DATE NOT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Candidate_Stack_Ass_id`),
  INDEX `fk_Candidate_Stack_Assignment_1_idx` (`Candiate_Id` ASC) VISIBLE,
  INDEX `fk_Candidate_Stack_Assignment_2_idx` (`Company_Requirement_id` ASC) VISIBLE,
  CONSTRAINT `fk_Candidate_Stack_Assignment_1`
    FOREIGN KEY (`Candiate_Id`)
    REFERENCES `Office`.`Fellowship_Candidate` (`Fellowship_Candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Candidate_Stack_Assignment_2`
    FOREIGN KEY (`Company_Requirement_id`)
    REFERENCES `Office`.`Company_Requiretment` (`Company_Requirement_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Hired_Candidate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Hired_Candidate` (
  `Hired_Candidate_ID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(255) NULL DEFAULT NULL,
  `Middle_Name` VARCHAR(255) NULL DEFAULT NULL,
  `Last_Name` VARCHAR(255) NULL DEFAULT NULL,
  `EmailID` VARCHAR(255) NULL DEFAULT NULL,
  `Hired_City` VARCHAR(255) NULL DEFAULT NULL,
  `Degree` VARCHAR(45) NULL DEFAULT NULL,
  `Hired_Date` DATE NOT NULL,
  `Mobile_N0` VARCHAR(45) NULL DEFAULT NULL,
  `Permanent_Address` VARCHAR(255) NULL DEFAULT NULL,
  `Hired_lab` VARCHAR(45) NULL DEFAULT NULL,
  `Attitude` INT NOT NULL,
  `Comm_remark` INT NOT NULL,
  `Knowledge_remark` INT NOT NULL,
  `Aggregate_Remark` INT NOT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Hired_Candidate_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Lab`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Lab` (
  `Lab_id` INT NOT NULL AUTO_INCREMENT,
  `Lab_name` VARCHAR(255) NOT NULL,
  `Location` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Lab_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Lab_Threshold`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Lab_Threshold` (
  `Lab_Threshold_id` INT NOT NULL AUTO_INCREMENT,
  `Lab_Capacity` INT NOT NULL,
  `Lab_id` INT NULL DEFAULT NULL,
  `Lead_Threshold` VARCHAR(45) NULL DEFAULT NULL,
  `Ideation_Engg_Threshold` VARCHAR(45) NULL DEFAULT NULL,
  `Buddy_Engg_Threshold` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Lab_Threshold_id`),
  INDEX `fk_Lab_Threshold_1_idx` (`Lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_Lab_Threshold_1`
    FOREIGN KEY (`Lab_id`)
    REFERENCES `Office`.`Lab` (`Lab_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Mentor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Mentor` (
  `Mentor_id` INT NOT NULL AUTO_INCREMENT,
  `Mentor_Name` VARCHAR(255) NOT NULL,
  `Mentor_Type` VARCHAR(45) NULL DEFAULT NULL,
  `Lab_id` INT NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Mentor_id`),
  INDEX `fk_Mentor_1_idx` (`Lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_Mentor_1`
    FOREIGN KEY (`Lab_id`)
    REFERENCES `Office`.`Lab` (`Lab_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Mentor_Ideation_Map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Mentor_Ideation_Map` (
  `Mentor_ideafion_Map_id` INT NOT NULL AUTO_INCREMENT,
  `Parant_Mentor_id` INT NULL DEFAULT NULL,
  `Mentor_id` INT NOT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Mentor_ideafion_Map_id`),
  INDEX `fk_Mentor_Ideation_Map_1_idx` (`Mentor_id` ASC) VISIBLE,
  CONSTRAINT `fk_Mentor_Ideation_Map_1`
    FOREIGN KEY (`Mentor_id`)
    REFERENCES `Office`.`Mentor` (`Mentor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`Mentor_Tech_Stack`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`Mentor_Tech_Stack` (
  `Mentor_Tech_Stack_id` INT NOT NULL AUTO_INCREMENT,
  `Mentor_id` INT NOT NULL,
  `Tech_Stack_id` INT NOT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  `Date_Time` DATETIME NOT NULL,
  PRIMARY KEY (`Mentor_Tech_Stack_id`),
  INDEX `fk_Mentor_Tech_Stack_1_idx` (`Mentor_id` ASC) VISIBLE,
  INDEX `fk_Mentor_Tech_Stack_2_idx` (`Tech_Stack_id` ASC) VISIBLE,
  CONSTRAINT `fk_Mentor_Tech_Stack_1`
    FOREIGN KEY (`Mentor_id`)
    REFERENCES `Office`.`Mentor` (`Mentor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Mentor_Tech_Stack_2`
    FOREIGN KEY (`Tech_Stack_id`)
    REFERENCES `Office`.`Tech_Stack` (`Tech_Stack_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Office`.`User_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Office`.`User_Details` (
  `User_ID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(255) NULL DEFAULT NULL,
  `Last_Name` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(32) NOT NULL,
  `Mobile_N0` VARCHAR(10) NULL DEFAULT NULL,
  `Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Creator_stamp` VARCHAR(255) NULL DEFAULT NULL,
  `Creator_User` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`User_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
