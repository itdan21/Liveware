DECLARE @IncidentIDs TABLE (id INT)
--Add Incident Card IDs here
INSERT @IncidentIDs(id) VALUES(4),(22),(83),(106),(118),(134),(242),(250),(256),(318),(329)

--Delete specific data for Incident Card
DELETE Incidents
WHERE ID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentPersonDetails
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentNotification
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentMedicalTreatment
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentMapLink
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentManagementInvestigationQuestions
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentManagementInternalNotification
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentInternalNotification
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentInjuryNotes
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)

DELETE IncidentHighAlerts
WHERE IncidentID IN
    (SELECT id
    FROM @IncidentIDs)