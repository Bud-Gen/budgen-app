const GET_ALL_PROJECTS = 'SELECT * FROM projects';

const GET_FINISHED_PROJECTS = 'SELECT * FROM projects WHERE isFinished=1';

const GET_UNFINISHED_PROJECT =
    'SELECT P.* FROM projects P WHERE P.isFinished=0   ORDER BY P.createdAt DESC LIMIT 1';

const GET_PROJECT_BY_ID = 'SELECT * FROM projects WHERE id==';
