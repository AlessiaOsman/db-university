-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

     SELECT `S`.`name` AS 'Nome', `S`.`surname` AS 'Cognome', `D`.`name` AS 'Nome Corso di Laurea'
     FROM `students` AS S 
     JOIN `degrees` AS D ON `S`.`degree_id` = `D`.`id` 
     WHERE `D`.`name` = 'Corso di Laurea in Economia';

-- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

    SELECT `DEG`.`name` AS 'Nome del Corso di Laurea', `DEP`.`name` AS 'Nome Dipartimento' 
    FROM `degrees` AS DEG 
    JOIN `departments` AS DEP ON `DEG`.`department_id` = `DEP`.`id` 
    WHERE `DEP`.`name` = 'Dipartimento di Neuroscienze';


-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

    SELECT `C`.`name`AS 'Nome del Corso', `T`.`name` AS 'Nome', `T`.`surname` AS 'Cognome', `T`.`id` AS 'Id insegnante' 
    FROM `courses` AS C 
    JOIN `course_teacher` AS CT ON `CT`.`course_id` = `C`.`id` 
    JOIN `teachers` AS T ON `CT`.`teacher_id` = `T`.`id` 
    WHERE `T`.`name` = 'Fulvio' 
    AND `T`.`surname` = 'Amato';

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

     SELECT `S`.`surname` AS 'Cognome Studente', `S`.`name` AS 'Nome Studente', DEG.*, `DEP`.`name` AS 'Nome Dipartimento' 
     FROM `students` AS S 
     JOIN `degrees` AS DEG ON `S`.`degree_id` = `DEG`.`id` 
     JOIN `departments` AS DEP ON `DEG`.`department_id` = `DEP`.`id` 
     ORDER BY `S`.`surname`;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

    SELECT `D`.`name` AS 'Nome Corso di Laurea', `C`.`name` AS 'Nome Corso', `T`.`name` AS 'Nome Insegnante', `T`.`surname` AS 'Cognome Insegnante' 
    FROM `degrees` AS D 
    JOIN `courses` AS C ON `D`.`id` = `C`.`degree_id` 
    JOIN `course_teacher` AS CT ON `CT`.`course_id` = `C`.`id` 
    JOIN `teachers` AS T ON `CT`.`teacher_id` = `T`.`id`;
    
-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami