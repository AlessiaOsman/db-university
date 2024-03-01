-- 1. Contare quanti iscritti ci sono stati ogni anno

        SELECT COUNT(*) as `numero_studenti`, YEAR(`enrolment_date`) as `anno_di_iscrizione` FROM `students` GROUP BY `anno_di_iscrizione`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

        SELECT COUNT(*) AS `teachers_number`, `office_address` AS `office` FROM `teachers` GROUP BY `office`;
-- 3. Calcolare la media dei voti di ogni appello d'esame
-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento