/* PERSONAL_DATA */
INSERT INTO DASHBOARD.PERSONAL_DATA (NAME, JOB, EMAIL, PHONE, CREATED_AT, UPDATED_AT, ACTIVE, `LANGUAGE`) VALUES('Javier Plaza Sisqués', 'Programador', 'javierplazasisques@gmail.com', '+34659761003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'es');
INSERT INTO DASHBOARD.PERSONAL_DATA (NAME, JOB, EMAIL, PHONE, CREATED_AT, UPDATED_AT, ACTIVE, `LANGUAGE`) VALUES('Javier Plaza Sisqués', 'Developer', 'javierplazasisques@gmail.com', '+34659761003', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'en');

/* ABOUT_ME SPANISH */
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Conocimiento','Me encanta descubrir cosas nuevas y aprender constantemente. Siempre estoy buscando nuevas oportunidades para ampliar mis conocimientos y mantener mi mente fresca. ¡Aprender es una de mis cosas favoritas!','faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Trabajo en equipo','Me apasiona la idea de trabajar en equipo. Disfruto de un ambiente colaborativo donde cada miembro aporta sus fortalezas, y juntos, podemos lograr metas significativas. La dinámica grupal no solo me motiva, sino que también creo que es clave para enfrentar desafíos de manera efectiva y generar soluciones innovadoras.','faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Resolución de problemas','Me entusiasma la resolución de problemas. Encuentro una gran satisfacción en abordar desafíos y buscar soluciones efectivas. Creo que cada problema es una oportunidad para aprender y mejorar, y disfruto aplicando mi creatividad y habilidades analíticas para encontrar las mejores respuestas. Estoy emocionado/a por la posibilidad de aportar estas habilidades a un equipo y contribuir al éxito general del proyecto.','faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');

/* ABOUT_ME ENGLISH */
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Knowledge', "I love discovering new things and learning constantly. I'm always looking for new opportunities to broaden my knowledge and keep my mind fresh. Learning is one of my favorite things!", 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Teamwork', 'I am passionate about the idea of working as a team. I enjoy a collaborative environment where each member contributes their strengths, and together, we can achieve meaningful goals. Group dynamics not only motivate me, but I also believe they are key to effectively addressing challenges and generating innovative solutions.', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.ABOUT_ME (NAME, DESCRIPTION, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Problem resolution', '
I am enthusiastic about problem-solving. I find great satisfaction in tackling challenges and seeking effective solutions. I believe that every problem is an opportunity to learn and improve, and I enjoy applying my creativity and analytical skills to find the best answers. I am excited about the possibility of bringing these skills to a team and contributing to the overall success of the project.', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');

/* AWARD SPANISH */
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Concurso regional ProgramaMe', 'En la final regional de Madrid de la competición de ProgramaMe en 2019, alcancé una destacada quinta posición. Este logro refleja no solo mi destreza técnica en programación, sino también mi habilidad para enfrentar desafíos en un entorno altamente competitivo. Durante la competición, pude demostrar un enfoque estratégico, creatividad y una sólida capacidad para resolver problemas a nivel regional. Estoy emocionado/a por compartir esta experiencia y aplicar mis habilidades en futuros proyectos desafiantes.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Concurso nacional ProgramaMe', 'En 2019, tuve la oportunidad de participar en la final nacional de la competición de ProgramaMe. Fue una experiencia enriquecedora que no solo puso a prueba mis habilidades en programación, sino que también me permitió enfrentar desafíos a un nivel competitivo nacional. Durante la competición, pude destacarme mediante un enfoque estratégico y creativo para resolver problemas. Estoy entusiasmado/a por compartir esta experiencia y ansioso/a por aplicar las lecciones aprendidas en futuros proyectos desafiantes.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Mejor PBS de CFGS', 'En 2019, fui honrado/a con el premio al Mejor PBS (Project Based School) en ciclos formativos de grado superior en la Universidad Europea de Madrid. Este reconocimiento resalta mi dedicación y excelencia en la realización de proyectos educativos basados en la práctica, evidenciando mi habilidad para abordar y liderar iniciativas significativas en el ámbito académico. Estoy emocionado/a de compartir esta distinción y ansioso/a por aplicar las lecciones aprendidas en futuras oportunidades educativas y profesionales.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');

/* AWARD ENGLISH */
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Regional contest ProgramaMe', 'In the 2019 ProgramaMe competition, I achieved a notable fifth place in the regional final in Madrid. This accomplishment reflects not only my technical prowess in programming but also my ability to tackle challenges in a highly competitive environment. Throughout the competition, I demonstrated a strategic approach, creativity, and a strong problem-solving capacity at the regional level. I am excited to share this experience and apply my skills to future challenging projects.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('National contest ProgramaMe', 'In 2019, I had the opportunity to participate in the national final of the ProgramaMe competition. It was a enriching experience that not only tested my programming skills but also allowed me to face challenges at a national competitive level. During the competition, I was able to stand out with a strategic and creative approach to problem-solving. I am excited to share this experience and eager to apply the lessons learned in future challenging projects.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.AWARD (NAME, DESCRIPTION, `YEAR`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Best PBS of CFGS', 'In 2019, I was honored with the award for the Best PBS (Project Based School) in higher vocational education at the Universidad Europea de Madrid. This recognition highlights my dedication and excellence in carrying out practical-based educational projects, showcasing my ability to tackle and lead meaningful initiatives in the academic sphere. I am excited to share this distinction and eager to apply the lessons learned in future educational and professional opportunities.', 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');

/* EXPERIENCE SPANISH */
/* INSERT INTO DASHBOARD.EXPERIENCE (ID) VALUES(0); */

/* IDIOM SPANISH */
INSERT INTO DASHBOARD.IDIOM (NAME, `LEVEL`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Español', 'Nativo', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.IDIOM (NAME, `LEVEL`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Inglés', 'B2', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');

/* IDIOM ENGLISH */
INSERT INTO DASHBOARD.IDIOM (NAME, `LEVEL`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Spanish', 'Native', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.IDIOM (NAME, `LEVEL`, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('English', 'B2', 'faCode', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');

/* LANGUAGE */
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('C#', '85', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Swift', '20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Kotlin', '30', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Python', '90', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('JavaScript', '70', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('TypeScript', '40', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Java', '80', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('SQL', '90', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('React', '65', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('C++', '10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.`LANGUAGE` (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('C', '05', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);

/* OTHER SPANISH */
INSERT INTO DASHBOARD.OTHER (NAME, LOCATION, START_YEAR, END_YEAR, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Vocal suplente', 'Universidad Europea', 2018, 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');
INSERT INTO DASHBOARD.OTHER (NAME, LOCATION, START_YEAR, END_YEAR, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Delegado de clase', 'Universidad Europea', 2018, 2020, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'es');

/* OTHER ENGLISH */
INSERT INTO DASHBOARD.OTHER (NAME, LOCATION, START_YEAR, END_YEAR, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Vocal substitute', 'Universidad Europea', 2018, 2019, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'en');
INSERT INTO DASHBOARD.OTHER (NAME, LOCATION, START_YEAR, END_YEAR, ICON, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, `LANGUAGE`) VALUES('Class representative', 'Universidad Europea', 2018, 2020, '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'en');


/* PROGRAM */
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('VScode', '90', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Docker', '70', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Git', '80', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Terminal', '75', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Grafana', '60', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Apisix', '40', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Kubernetes', '30', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Visual Studio', '85', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Jenkins', '50', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);
INSERT INTO DASHBOARD.PROGRAM (NAME, VALUE, CREATED_AT, UPDATED_AT, ACTIVE, ICON, ID_PERSONAL_DATA) VALUES('Redis', '20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, '', 1);


/* PROJECT SPANISH */
INSERT INTO DASHBOARD.PROJECT (NAME, DESCRIPTION, URL, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, ICON, `LANGUAGE`) VALUES('Dashboard', 'Descripción', 'https://github.com/JSisquesDev/Frontend-Dashboard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'faCode', 'es');

/* PROJECT ENGLISH */
INSERT INTO DASHBOARD.PROJECT (NAME, DESCRIPTION, URL, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, ICON, `LANGUAGE`) VALUES('Dashboard', 'desc', 'https://github.com/JSisquesDev/Frontend-Dashboard', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2, 'faCode', 'en');


/* SOCIAL_MEDIA */
INSERT INTO DASHBOARD.SOCIAL_MEDIA (NAME, URL, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, ICON) VALUES('JSisques', 'https://github.com/JSisques', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'faGithub');
INSERT INTO DASHBOARD.SOCIAL_MEDIA (NAME, URL, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA, ICON) VALUES('Javier Plaza Sisqués', 'https://www.linkedin.com/in/javier-plaza-sisqu%C3%A9s-b79367172/', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 'faLinkedin');

/* STUDY SPANISH */
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('Estudios Generales', 'Divina Pastora', 2002, 2015, 'faSchool', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('SMR', 'I.E.S. San Andrés', 2016, 2018, 'faNetworkWired', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('DAM', 'Universidad Europea', 2018, 2020, 'faCode', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('Ingeniería Informática', 'Universidad Europea', 2020, 2024, 'faComputer', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('NDG Linux Essentials', 'Cisco', 2019, 2019, 'faUbuntu', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('Curso Ciberseguridad', 'Incibe', 2016, 2016, 'faShieldHalved', 'es', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);

/* STUDY ENGLISH */
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('General Studies', 'Divina Pastora', 2002, 2015, 'faSchool', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('SMR', 'I.E.S. San Andrés', 2016, 2018, 'faNetworkWired', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('DAM', 'Universidad Europea', 2018, 2020, 'faCode', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('Computer Engineering', 'Universidad Europea', 2020, 2024, 'faComputer', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('NDG Linux Essentials', 'Cisco', 2019, 2019, 'faUbuntu', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
INSERT INTO DASHBOARD.STUDY (NAME, LOCATION, START_YEAR, END_YEAR, ICON, `LANGUAGE`, CREATED_AT, UPDATED_AT, ACTIVE, ID_PERSONAL_DATA) VALUES('Cybersecurity Course', 'Incibe', 2016, 2016, 'faShieldHalved', 'en', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 2);
