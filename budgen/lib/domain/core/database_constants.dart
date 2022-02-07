///  initial configuration
const NAME_DB = 'budget_generator';
const int VERSION = 1;

/// Tables names
const FILE = 'files';
const ITEM = 'items';
const WORKER = 'workers';
const PROJECT = 'projects';
const USER = "users";

/// create tables
const CREATE_FILE_TABLE =
    "CREATE TABLE files(id INTEGER PRIMARY KEY, name TEXT, path TEXT)";

const CREATE_ITEM_TABLE =
    "CREATE TABLE items(id TEXT PRIMARY KEY, name TEXT, path TEXT , code TEXT,description TEXT, imageUrl TEXT, price REAL,isFavorite BIT, createdAt INTEGER, createdBy TEXT, deletedBy TEXT)";

const CREATE_PROJECT_TABLE =
    "CREATE TABLE projects(id TEXT,name TEXT,items TEXT,workers TEXT,email TEXT,isFinished BIT,price REAL,discount REAL,createdAt INTEGER ,createdBy TEXT,deletedBy TEXT);";

const CREATE_WORKER_TABLE =
    "CREATE TABLE workers(id TEXT,name TEXT,code TEXT,description TEXT,imageUrl TEXT,price REAL,phone TEXT,type TEXT,address TEXT,path TEXT,isFavorite BIT,createdAt INTEGER,createdBy TEXT,deletedBy TEXT);";

const CREATE_USER_TABLE =
    "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, email TEXT)";
