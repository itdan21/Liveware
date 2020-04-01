SELECT sli.Name AS 'Incident Type', sublist.Name AS 'Incident Sub Type' from SelectionListItem sli
INNER JOIN SelectionListItemSubListLink sll ON sll.ListItemID=sli.ID
INNER JOIN SelectionSubListItem ssli ON ssli.SubListID=sll.SubListID
INNER JOIN SelectionListItem sublist ON sublist.ID=ssli.SelectionListItemID
WHERE sli.Type='INCT'