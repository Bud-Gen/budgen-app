const GET_ALL_ITEMS = 'SELECT * FROM items;';

const GET_ITEM_BY_ID = 'SELECT * FROM items WHERE id==';

const DELETE_ITEM = 'DELETE FROM items WHERE id==';

const GET_FAVORITE_ITEMS = 'SELECT I.* FROM items I WHERE I.isFavorite=1;';
