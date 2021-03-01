INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Yellow', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('BootCamp HTML', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ASwitch-course-book-grey.svg&psig=AOvVaw0Xj1LWQXOMOmJKD4u0yVjQ&ust=1614608585508000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMiG3e7jjO8CFQAAAAAdAAAAABAQ');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 0, 1);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 1','Neste capítulo vamos começar', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 1, null );
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 2','Neste capítulo vamos continuar', 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 1, 1 );
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 3','Neste capítulo vamos finalizar', 3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw27sXiKzhMe0DRDwaIN3fF4&ust=1614608545114000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDBt9vjjO8CFQAAAAAdAAAAABAD', 1, 2 );

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Cap 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de Apoio: abc','http://www.youtube.com');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Cap 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '','http://www.youtube.com');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Cap 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '','http://www.youtube.com');  

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Cap ', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer o trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-12-25T03:00:00Z');  

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
