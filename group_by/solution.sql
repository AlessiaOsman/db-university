-- 1. Contare quanti iscritti ci sono stati ogni anno

        SELECT YEAR(`enrolment_date`) as `anno_di_iscrizione`, COUNT(*) as `numero_studenti` FROM `students` GROUP BY `anno_di_iscrizione`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

        SELECT `office_address` AS `office`, COUNT(*) AS `teachers_number`  FROM `teachers` GROUP BY `office`;

-- 3. Calcolare la media dei voti di ogni appello d'esame

        SELECT `exam_id`, ROUND(AVG(`vote`)) as `vote_everage` FROM `exam_student` WHERE `vote` >= 18 GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

        SELECT `department_id` as `department`, COUNT(`id`) AS `degrees_number` FROM `degrees` GROUP BY `department`;