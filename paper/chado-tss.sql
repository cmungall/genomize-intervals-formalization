SELECT
 *
FROM
 TSS,
 transcript,
 fr.part_of
WHERE
 TSS.feature_id=part_of.subject_id AND
 transcript.feature_id=part_of.object_id AND
 NOT EXISTS (SELECT * 
             FROM feature_upstream_of AS uo 
             WHERE uo.subject_id=TSS.feature_id AND uo.object_id=transcript.feature_id);
 
