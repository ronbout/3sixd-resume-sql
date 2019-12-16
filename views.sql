/*
DROP VIEW IF EXISTS person_with_phonetypes_vw;
CREATE VIEW person_with_phonetypes_vw AS
select p1.id, p1.formattedName, p1.givenName, p1.middleName, p1.familyName, p1.affix,
		p1.addressLine1, p1.addressLine2, p1.municipality, p1.region, p1.postalCode, p1.countryCode,
		p1.email1, p1.email2, p1.website,
	GROUP_CONCAT( case when phoneType = 'Home' then phoneNumber end) AS homePhone,
	GROUP_CONCAT( case when phoneType = 'Mobile' then phoneNumber end) AS mobilePhone,
	GROUP_CONCAT( case when phoneType = 'Work' then phoneNumber end) AS workPhone
from person_with_phones_vw p1
GROUP BY formattedName
ORDER BY familyName;

SELECT * FROM person_with_phonetypes_vw;
*/

/*
DROP VIEW IF EXISTS candidate_jobs_vw;
CREATE VIEW candidate_jobs_vw AS
SELECT j1.id, j1.candidateId, j1.startDate, j1.endDate, j1.payType, j1.startPay, j1.endPay, j1.summary,
		j1.jobTitleId, jt1.titleDescription AS jobTitle, j1.companyId, 
		c1.name AS companyName, c1.municipality AS companyMunicipality, c1.region AS companyRegion, 
		c1.countryCode AS companyCountryCode, 
		IFNULL(j1.contactPersonId, c1.contactPersonId) AS contactPersonId,
		cpv.formattedName AS contactPersonFormattedName, cpv.givenName as contactPersonGivenName,
		cpv.familyName as contactPersonFamilyName, cpv.mobilePhone AS contactPersonMobilePhone,
		cpv.workPhone AS contactPersonWorkPhone, cpv.addressLine1 AS contactPersonAddressLine1,
		cpv.addressLine2 AS contactPersonAddressLine2, cpv.municipality AS contactPersonMunicipality,
		cpv.region AS contactPersonRegion, cpv.postalCode AS contactPersonPostalCode,
		cpv.countryCode AS contactPersonCountryCode, cpv.email1 AS contactPersonEmail1,
		cpv.website AS contactPersonWebsite,
		GROUP_CONCAT( s1.id SEPARATOR '|' ) AS skillIds,
		GROUP_CONCAT( s1.name SEPARATOR '|' ) AS skillNames,
		GROUP_CONCAT( js1.usePercentage SEPARATOR '|' ) AS skillPcts,
		GROUP_CONCAT( cs.id SEPARATOR '|') AS candidateSkillIds,
		GROUP_CONCAT( COALESCE(cs.tested, 0) SEPARATOR '|' ) AS skillTestedFlag,
		GROUP_CONCAT( COALESCE(cs.testResults, 0) SEPARATOR '|' ) AS skillTestResults,
		GROUP_CONCAT( COALESCE(cs.totalMonths, 0) SEPARATOR '|' ) AS skillTotalMonths,
		GROUP_CONCAT( IFNULL(cs.resumeTechtagId, '') SEPARATOR '|' ) AS resumeTechtags,
		GROUP_CONCAT( IFNULL(tt.name, '') SEPARATOR '|' ) AS resumeTechtagNames
	FROM candidatejobs j1
	JOIN company c1 ON j1.companyId = c1.id
	LEFT OUTER JOIN candidatejob_skills js1 ON j1.id = js1.jobId
	LEFT OUTER JOIN candidate_skills cs ON js1.candidateSkillId = cs.id
	LEFT OUTER JOIN skill s1 ON cs.skillId = s1.id
	LEFT OUTER JOIN techtag tt ON cs.resumeTechtagId = tt.id
	LEFT OUTER JOIN candidatetitles jt1 ON j1.jobTitleId = jt1.id
	LEFT OUTER JOIN person_with_phonetypes_vw cpv ON IFNULL(j1.contactPersonId, c1.contactPersonId) = cpv.id
	GROUP BY j1.id
	ORDER BY j1.id 

SELECT * FROM candidate_jobs_vw;
*/

/*
DROP VIEW IF EXISTS company_vw;
CREATE VIEW company_vw AS
SELECT c1.id, c1.name, c1.description, c1.addressLine1, c1.addressLine2, c1.municipality, c1.region,
		c1.postalCode, c1.email, c1.website, c1.contactPersonId as personId,
		pp1.formattedName AS personFormattedName, pp1.givenName AS personGivenName,
		pp1.middleName AS personMiddleName, pp1.familyName AS personFamilyName, 
		pp1.affix AS personAffix, pp1.addressLine1 AS personAddr1, pp1.addressLine2 AS personAddr2,
		pp1.municipality AS personMunicipality, pp1.region AS personRegion, 
		pp1.postalCode AS personPostalCode, pp1.countryCode AS personCountryCode, 
		pp1.email1 AS personEmail1, pp1.email2 AS personEmail2, pp1.website AS personWebsite,
		pp1.homePhone AS personHomePhone, pp1.mobilePhone AS personMobilePhone, 
		pp1.workPhone AS personWorkPhone
	FROM company c1
	LEFT OUTER JOIN person_with_phonetypes_vw pp1 ON c1.contactPersonId = pp1.id;
 
SELECT * FROM company_vw;


DROP VIEW IF EXISTS candidate_with_phones_skills_vw;
CREATE VIEW candidate_with_phones_skills_vw AS
select c1.id, p1.formattedName, p1.familyName AS lastName, c2.name AS agency, 
	   p2.phoneType, p2.phoneNumber, 
	   cs.jobSkillName, cs.edSkillName, cs.certSkillName
	from candidate c1
	JOIN person p1 ON c1.personId = p1.id
	LEFT OUTER JOIN personphone p2 ON p1.id = p2.personId
	LEFT OUTER JOIN company c2 ON c1.agencyId = c2.id
	LEFT OUTER JOIN candidate_skilllist_vw cs ON c1.id = cs.id;

SELECT * from candidate_with_phones_skills_vw;

DROP VIEW IF EXISTS candidate_with_phonetypes_skills_vw;
CREATE VIEW candidate_with_phonetypes_skills_vw AS
select id, formattedName, jobSkillName, edSkillName, certSkillName,
	GROUP_CONCAT( case when phoneType = 'Home' then phoneNumber end) AS homePhone,
	GROUP_CONCAT( case when phoneType = 'Mobile' then phoneNumber end) AS mobilePhone,
	GROUP_CONCAT( case when phoneType = 'Work' then phoneNumber end) AS workPhone
from candidate_with_phones_skills_vw
GROUP BY id
ORDER BY LastName;

SELECT * FROM candidate_with_phonetypes_skills_vw;

DROP VIEW IF EXISTS candidate_with_phonetypes_jobskills_vw;
CREATE VIEW candidate_with_phonetypes_jobskills_vw AS
select id, formattedName, jobSkillName,
	GROUP_CONCAT( case when phoneType = 'Home' then phoneNumber end) as Home,
	GROUP_CONCAT( case when phoneType = 'Mobile' then phoneNumber end) as Mobile,
	GROUP_CONCAT( case when phoneType = 'Work' then phoneNumber end) as Work
from candidate_with_phones_skills_vw
GROUP BY id
ORDER BY LastName;
 
SELECT * FROM candidate_with_phonetypes_jobskills_vw;
*/

DROP VIEW IF EXISTS candidate_basic_vw;
CREATE VIEW candidate_basic_vw AS
SELECT c1.id, c1.jobTitle, c1.executiveSummary, c1.objective,
		IFNULL(c1.agencyContactId, a1.contactPersonId) AS agencyContactId, apv.formattedName AS agencyContactFormattedName,
		apv.mobilePhone AS agencyContactMobilePhone, apv.workPhone AS agencyContactWorkPhone,	c1.personId,
		p1.formattedName AS personFormattedName, p1.givenName AS personGivenName,
		p1.middleName AS personMiddleName, p1.familyName AS personFamilyName,
		p1.affix AS personAffix, p1.addressLine1 AS personAddressLine1, p1.addressLine2 AS personAddressLine2,
		p1.municipality AS personMunicipality, p1.region AS personRegion, p1.postalCode AS personPostalCode,
		p1.countryCode AS personCountryCode, p1.email1 AS personEmail1, p1.email2 AS personEmail2,
		p1.website AS personWebsite,
		c1.agencyId, a1.name AS agencyName, a1.description AS agencyDescription, a1.addressLine1 AS agencyAddressLine1,
		a1.addressLine2 AS agencyAddressLine2, a1.municipality AS agencyMunicipality, a1.region AS agencyRegion,
		a1.postalCode AS agencyPostalCode,	a1.countryCode AS agencyCountryCode,
		a1.email AS agencyEmail, a1.website AS agencyWebsite,
		cv.homePhone AS personHomePhone, cv.mobilePhone AS personMobilePhone, cv.workPhone AS personWorkPhone,
		cv.jobSkillName, cv.edSkillName, cv.certSkillName
	FROM candidate c1
	JOIN person p1 ON c1.personId = p1.id
	LEFT OUTER JOIN company a1 ON c1.agencyId = a1.id
	LEFT OUTER JOIN candidate_with_phonetypes_skills_vw cv ON c1.id = cv.id
	LEFT OUTER JOIN person_with_phonetypes_vw apv ON IFNULL(c1.agencyContactId, a1.contactPersonId) = apv.id;


 SELECT * FROM candidate_basic_vw;
 /*

DROP VIEW IF EXISTS company_vw;
CREATE VIEW company_vw AS
SELECT c1.id, c1.name, c1.description, c1.addressLine1, c1.addressLine2, c1.municipality, c1.region,
		c1.postalCode, c1.email, c1.website, c1.contactPersonId as personId,
		pp1.formattedName AS personFormattedName, pp1.givenName AS personGivenName,
		pp1.middleName AS personMiddleName, pp1.familyName AS personFamilyName,
		pp1.affix AS personAffix, pp1.addressLine1 AS personAddressLine1,
		pp1.addressLine2 AS personAddressLine2,
		pp1.municipality AS personMunicipality, pp1.region AS personRegion,
		pp1.postalCode AS personPostalCode, pp1.countryCode AS personCountryCode,
		pp1.email1 AS personEmail1, pp1.email2 AS personEmail2, pp1.website AS personWebsite,
		pp1.homePhone AS personHomePhone, pp1.mobilePhone AS personMobilePhone,
		pp1.workPhone AS personWorkPhone
	FROM company c1
	LEFT OUTER JOIN person_with_phonetypes_vw pp1 ON c1.contactPersonId = pp1.id;

SELECT * FROM company_vw;
*/

/*
DROP VIEW IF EXISTS candidate_highlights_skills_vw;
CREATE VIEW candidate_highlights_skills_vw AS
SELECT ch.id, ch.candidateId, ch.highlight, ch.sequence,
	GROUP_CONCAT( s.id SEPARATOR '|') AS skillIds,
	GROUP_CONCAT( s.name SEPARATOR '|') AS skillNames
FROM candidatehighlights ch 
LEFT OUTER JOIN candidatehighlights_skills chs ON chs.candidateHighlightsId = ch.id
LEFT OUTER JOIN candidate_skills cs ON cs.id = chs.candidateSkillId
LEFT OUTER JOIN skill s ON s.id = cs.skillId
GROUP BY ch.id
ORDER BY ch.id;

SELECT * FROM candidate_highlights_skills_vw;
*/

/*
DROP VIEW IF EXISTS candidate_job_highlights_skills_vw;
CREATE VIEW candidate_job_highlights_skills_vw AS
SELECT cjh.id, cj.id AS jobId, cj.candidateId, cjh.highlight, cjh.sequence, cjh.includeInSummary,
	GROUP_CONCAT( s.id SEPARATOR '|') AS skillIds,
	GROUP_CONCAT( s.name SEPARATOR '|') AS skillNames
FROM candidatejobs cj
JOIN candidatejobhighlights cjh ON cjh.jobId = cj.id
LEFT OUTER JOIN candidatejobhighlights_skills cjhs ON cjhs.candidateJobHighlightsId = cjh.id
LEFT OUTER JOIN candidate_skills cs ON cs.id = cjhs.candidateSkillId
LEFT OUTER JOIN skill s ON s.id = cs.skillId
GROUP BY cjh.id
ORDER BY cjh.id;

SELECT * FROM candidate_job_highlights_skills_vw;
*/

/*
DELIMITER $$
DROP TRIGGER IF EXISTS tr_person_bu $$
CREATE TRIGGER tr_person_bu BEFORE UPDATE ON person
FOR EACH ROW
BEGIN
	SET new.formattedName = CONCAT_WS(' ', new.givenName, new.middleName, new.familyName, new.affix);
END $$
DELIMITER ;
*/

/*
DROP VIEW IF EXISTS candidate_highlights_skills_vw;
CREATE VIEW candidate_highlights_skills_vw AS
SELECT ch.id, ch.candidateId, ch.highlight, ch.sequence,
	GROUP_CONCAT( s.id SEPARATOR '|') AS skillIds,
	GROUP_CONCAT( s.name SEPARATOR '|') AS skillNames,
	GROUP_CONCAT( cs.id SEPARATOR '|') AS candidateSkillIds
FROM candidatehighlights ch 
LEFT OUTER JOIN candidatehighlights_skills chs ON chs.candidateHighlightsId = ch.id
LEFT OUTER JOIN candidate_skills cs ON cs.id = chs.candidateSkillId
LEFT OUTER JOIN skill s ON s.id = cs.skillId
GROUP BY ch.id
ORDER BY ch.id;

SELECT * FROM candidate_highlights_skills_vw;
*/

/*
DROP VIEW IF EXISTS candidate_job_highlights_skills_vw;
CREATE VIEW candidate_job_highlights_skills_vw AS
SELECT cjh.id, cj.id as jobId, cj.candidateId, cjh.highlight, cjh.sequence, cjh.includeInSummary,
	GROUP_CONCAT( s.id SEPARATOR '|') AS skillIds,
	GROUP_CONCAT( s.name SEPARATOR '|') AS skillNames,
	GROUP_CONCAT( cs.id SEPARATOR '|') AS candidateSkillIds
FROM candidatejobs cj
JOIN candidatejobhighlights cjh ON cjh.jobId = cj.id
LEFT OUTER JOIN candidatejobhighlights_skills cjhs ON cjhs.candidateJobHighlightsId = cjh.id
LEFT OUTER JOIN candidate_skills cs ON cs.id = cjhs.candidateSkillId
LEFT OUTER JOIN skill s ON s.id = cs.skillId
GROUP BY cjh.id
ORDER BY cjh.id;

SELECT * FROM candidate_job_highlights_skills_vw;
*/

/*
DELIMITER $$
DROP TRIGGER IF EXISTS tr_candidate_skills_bi $$
CREATE TRIGGER tr_candidate_skills_bi BEFORE INSERT ON candidate_skills
FOR EACH ROW
BEGIN
	-- check that the techtag id is related to the skill or null
	DECLARE all_good INT;

	SELECT COUNT(1) INTO all_good
		FROM skills_techtags
		WHERE skills_techtags.skillId = NEW.skillId
			AND skills_techtags.techtagId = NEW.resumeTechtagId;

	IF all_good = 0 AND NEW.resumeTechtagId IS NOT NULL THEN
		SET @msg = 'The techtagId must relate to the skillId through the "skills_techtags" table';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @msg;
	END IF;
END
$$
DELIMITER ;


DELIMITER $$
DROP TRIGGER IF EXISTS tr_candidate_skills_bu $$
CREATE TRIGGER tr_candidate_skills_bu BEFORE UPDATE ON candidate_skills
FOR EACH ROW
BEGIN
	-- check that the techtag id is related to the skill or null
	DECLARE all_good INT;

	SELECT COUNT(1) INTO all_good
		FROM skills_techtags
		WHERE skills_techtags.skillId = NEW.skillId
			AND skills_techtags.techtagId = NEW.resumeTechtagId;

	IF all_good = 0 AND NEW.resumeTechtagId IS NOT NULL THEN
		SET @msg = 'The techtagId must relate to the skillId through the "skills_techtags" table';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @msg;
	END IF;
END
$$
DELIMITER ;
*/

/*
DELIMITER $$
DROP FUNCTION IF EXISTS get_candidate_skill_id $$
CREATE FUNCTION get_candidate_skill_id (pi_candidate_id INT, pi_skill_id INT)
RETURNS INT
BEGIN
	DECLARE v_cs_id INT;

	SELECT id FROM candidate_skills WHERE candidateId = pi_candidate_id AND skillId = pi_skill_id INTO v_cs_id;

	IF ISNULL(v_cs_id) THEN
		INSERT INTO candidate_skills (candidateId, skillId) VALUES (pi_candidate_id, pi_skill_id);
		SELECT LAST_INSERT_ID() INTO v_cs_id;
	END IF;

	RETURN v_cs_id;

END
$$
DELIMITER ;
*/

/*
DROP VIEW IF EXISTS candidate_education_vw;
CREATE VIEW candidate_education_vw AS
SELECT ed1.id, ed1.candidateId, ed1.schoolName, ed1.schoolMunicipality, ed1.schoolRegion, ed1.schoolCountry,
		ed1.degreeName, ed1.degreeType, ed1.degreeMajor, ed1.degreeMinor, ed1.startDate, ed1.endDate,
		GROUP_CONCAT( s1.id SEPARATOR '|' ) AS skillIds,
		GROUP_CONCAT( s1.name SEPARATOR '|' ) AS skillNames,
		GROUP_CONCAT( cs.id SEPARATOR '|') AS candidateSkillIds,
		GROUP_CONCAT( eds1.usePercentage SEPARATOR '|' ) AS skillPcts
	FROM candidateeducation ed1
	LEFT OUTER JOIN candidateeducation_skills eds1 ON ed1.id = eds1.educationId
	LEFT OUTER JOIN candidate_skills cs ON eds1.candidateSkillId = cs.id
	LEFT OUTER JOIN skill s1 ON cs.skillId = s1.id
	GROUP BY ed1.id
	ORDER BY ed1.id;

SELECT * FROM candidate_education_vw;
*/

/*
DELIMITER $$
DROP FUNCTION IF EXISTS get_candidate_job_title $$
CREATE FUNCTION get_candidate_job_title (pi_candidate_id INT, pi_title VARCHAR(30))
RETURNS INT
BEGIN
	DECLARE v_ct_id INT;
	
	SELECT id FROM candidatetitles WHERE candidateId = pi_candidate_id AND titleDescription = pi_title INTO v_ct_id;
		
	IF ISNULL(v_ct_id) THEN		
		INSERT INTO candidatetitles (candidateId, titleDescription) VALUES (pi_candidate_id, pi_title);
		SELECT LAST_INSERT_ID() INTO v_ct_id;
	END IF;
	
	RETURN v_ct_id;

END
$$
DELIMITER ;
*/

/*
DROP VIEW IF EXISTS company_vw;
CREATE VIEW company_vw AS
SELECT c1.id, c1.name, c1.description, c1.companyPhone, c1.addressLine1, 
		c1.addressLine2, c1.municipality, c1.region,
		c1.postalCode, c1.countryCode, c1.email, c1.website, 
		c1.contactPersonId as personId,
		pp1.formattedName AS personFormattedName, pp1.givenName AS personGivenName,
		pp1.middleName AS personMiddleName, pp1.familyName AS personFamilyName, 
		pp1.affix AS personAffix, pp1.addressLine1 AS personAddressLine1, 
		pp1.addressLine2 AS personAddressLine2,
		pp1.municipality AS personMunicipality, pp1.region AS personRegion, 
		pp1.postalCode AS personPostalCode, pp1.countryCode AS personCountryCode, 
		pp1.email1 AS personEmail1, pp1.email2 AS personEmail2, pp1.website AS personWebsite,
		pp1.homePhone AS personHomePhone, pp1.mobilePhone AS personMobilePhone, 
		pp1.workPhone AS personWorkPhone
	FROM company c1
	LEFT OUTER JOIN person_with_phonetypes_vw pp1 ON c1.contactPersonId = pp1.id;
 
SELECT * FROM company_vw;
*/



