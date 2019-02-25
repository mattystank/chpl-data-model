-- Deployment file for version 16.0.0
--     as of 2019-02-25
-- ocd-2697.sql
--
-- OCD-2697: accept bad characters in number fields for test/participant data during upload
--
alter table openchpl.pending_test_participant
alter column professional_experience_months type text,
alter column computer_experience_months type text,
alter column product_experience_months type text;

alter table openchpl.pending_test_task
alter column task_success_avg_pct type text,
alter column task_success_stddev_pct type text,
alter column task_path_deviation_observed type text,
alter column task_path_deviation_optimal type text,
alter column task_time_avg_seconds type text,
alter column task_time_stddev_seconds type text,
alter column task_time_deviation_observed_avg_seconds type text,
alter column task_time_deviation_optimal_avg_seconds type text,
alter column task_errors_pct type text,
alter column task_errors_stddev_pct type text,
alter column task_rating type text,
alter column task_rating_stddev type text;
;
-- ocd-2633.sql
--
-- OCD-2633: update G1/G2 text / descriptions
--

-- names
update openchpl.macra_criteria_map set name = 'Computerized Provider Order Entry - Medications: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(1)');
update openchpl.macra_criteria_map set name = 'Computerized Provider Order Entry - Medications: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(1)');
update openchpl.macra_criteria_map set name = '(Gap Certified) Computerized Provider Order Entry - Medications: Eligible Professional' where value = 'GAP-EP' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(1)');
update openchpl.macra_criteria_map set name = 'Computerized Provider Order - Laboratory: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(2)');
update openchpl.macra_criteria_map set name = 'Computerized Provider Order Entry - Laboratory: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(2)');
update openchpl.macra_criteria_map set name = '(Gap Certified) Computerized Provider Order - Laboratory: Eligible Professional' where value = 'GAP-EP' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(2)');
update openchpl.macra_criteria_map set name = 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(3)');
update openchpl.macra_criteria_map set name = 'Computerized Provider Order Entry - Diagnostic Imaging: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(3)');
update openchpl.macra_criteria_map set name = '(Gap Certified) Computerized Provider Order Entry - Diagnostic Imaging: Eligible Professional' where value = 'GAP-EP' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(3)');
    --fixing typo with next two
update openchpl.macra_criteria_map set name = 'Electronic Prescribing: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(10)');
update openchpl.macra_criteria_map set name = 'Electronic Prescribing: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(10)');
update openchpl.macra_criteria_map set name = 'Patient-Specific Education: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(13)');
update openchpl.macra_criteria_map set name = 'Patient-Specific Education: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(13)');
update openchpl.macra_criteria_map set name = 'Patient Care Record Exchange: Eligible Professional' where value = 'RT7 EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set name = 'Patient Care Record Exchange: Eligible Professional' where value = 'RT7 EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set name = 'Support Electronic Referral Loops by Sending Health Information (formerly Patient Care Record Exchange): Eligible Clinician' where value = 'RT7 EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set name = 'Request/Accept Patient Care Record: Eligible Professional' where value = 'RT8 EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set name = 'Medication/Clinical Information Reconciliation: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(2)');
update openchpl.macra_criteria_map set name = 'Medication/Clinical Information Reconciliation: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(2)');
update openchpl.macra_criteria_map set name = 'Electronic Prescribing: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(3)');
update openchpl.macra_criteria_map set name = 'Electronic Prescribing: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(3)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2a EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2b EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2b EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2b EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2b EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4b EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4b EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set name = 'Secure Electronic Messaging: Eligible Professional' where value = 'EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(2)');
update openchpl.macra_criteria_map set name = 'Secure Electronic Messaging: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(2)');
update openchpl.macra_criteria_map set name = 'Patient-Generated Health Data: Eligible Professional' where value = 'EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(3)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2a EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2c EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2c EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2c EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4c EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4c EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2a EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2c EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Patient Electronic Access: Eligible Professional' where value = 'RT2c EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Clinician' where value = 'RT2c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'Provide Patients Electronic Access to Their Health Information (formerly Patient Electronic Access): Eligible Hospital/Critical Access Hospital' where value = 'RT2c EH/CAH Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4a EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4c EP Stage 2' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set name = 'View, Download, or Transmit (VDT): Eligible Professional' where value = 'RT4c EP Stage 3' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');

-- descriptions
update openchpl.macra_criteria_map set description = 'Required Test 1: Promoting Interoperability Objective 2 Measure 1' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(10)');
update openchpl.macra_criteria_map set description = 'Required Test 1: Promoting Interoperability Transition Objective 2 Measure 1 ' where value = 'EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(10)');
update openchpl.macra_criteria_map set description = 'Required Test 3: Promoting Interoperability Objective 3 Measure 2' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(13)');
update openchpl.macra_criteria_map set description = 'Required Test 3: Promoting Interoperability Transition Objective 4 Measure 2 ' where value = 'EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (a)(13)');
update openchpl.macra_criteria_map set description = 'Required Test 7: Promoting Interoperability Objective 5 Measure 1' where value = 'RT7 EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 7: Promoting Interoperability Transition Objective 6 Measure 1 ' where value = 'RT7 EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 8: Promoting Interoperability Objective 5 Measure 2' where value = 'RT8 EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 9: Promoting Interoperability Objective 5 Measure 3' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(2)');
update openchpl.macra_criteria_map set description = 'Required Test 9: Promoting Interoperability Transition Objective 7 Measure 1 ' where value = 'EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(2)');
update openchpl.macra_criteria_map set description = 'Required Test 1: Promoting Interoperability Objective 2 Measure 1' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(3)');
update openchpl.macra_criteria_map set description = 'Required Test 1: Promoting Interoperability Transition Objective 2 Measure 1 ' where value = 'EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (b)(3)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1 ' where value = 'RT2a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2b EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1 ' where value = 'RT2b EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4b EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4b EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(1)');
update openchpl.macra_criteria_map set description = 'Required Test 5: Promoting Interoperability Objective 4 Measure 2' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(2)');
update openchpl.macra_criteria_map set description = 'Required Test 5: Promoting Interoperability Transition Objective 5 Measure 1 ' where value = 'EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(2)');
update openchpl.macra_criteria_map set description = 'Required Test 6: Promoting Interoperability Objective 4 Measure 3' where value = 'EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (e)(3)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1' where value = 'RT2a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1 ' where value = 'RT2c EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4c EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(8)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1 ' where value = 'RT2a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Objective 3 Measure 1' where value = 'RT2c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 2: Promoting Interoperability Transition Objective 3 Measure 1' where value = 'RT2c EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4a EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4a EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Objective 4 Measure 1' where value = 'RT4c EC ACI' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
update openchpl.macra_criteria_map set description = 'Required Test 4: Promoting Interoperability Transition Objective 3 Measure 2 ' where value = 'RT4c EC ACI Transition' and criteria_id = (select cc.certification_criterion_id from openchpl.certification_criterion cc where cc.number = '170.315 (g)(9)');
;
-- ocd-2655.sql
DO $$
BEGIN
IF NOT EXISTS (SELECT column_name FROM information_schema.columns WHERE table_schema='openchpl' AND table_name='pending_surveillance' AND column_name='user_permission_id') THEN
	ALTER TABLE openchpl.pending_surveillance
	ADD COLUMN user_permission_id BIGINT;

	UPDATE openchpl.pending_surveillance
	SET user_permission_id = (SELECT user_permission_id FROM openchpl.user_permission WHERE name LIKE 'ACB');

	ALTER TABLE openchpl.pending_surveillance
	ALTER COLUMN user_permission_id SET NOT NULL;

	ALTER TABLE openchpl.pending_surveillance
	ADD CONSTRAINT user_permission_fk
	FOREIGN KEY (user_permission_id)
	REFERENCES openchpl.user_permission (user_permission_id)
	MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE;
END IF;
END $$ ;
;
insert into openchpl.data_model_version (version, deploy_date, last_modified_user) values ('16.0.0', '2019-02-25', -1);
\i dev/openchpl_soft-delete.sql
\i dev/openchpl_views.sql
\i dev/openchpl_grant-all.sql
