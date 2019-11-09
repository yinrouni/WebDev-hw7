import { createStore, combineReducers } from 'redux';
import deepFreeze from 'deep-freeze-strict';

/* Structure of store data:
 * {
 *   forms: {
 *     new_sheet: {...},
 *     edit_photo: {...},
 *     new_user: {...},
 *     edit_user: {...},
 *   },
 *   users: Map.new(
 *     1 => {id: 1, name: "Alice", email: "alice@example.com"},
 *     ...
 *   ),
 *   photos: Map.new(
 *     1 => {id: 1, data: "...", desc: "...", tags: [...]},
 *     ...
 *   ),
 *   sheets: Map.new(
 *     1=>{id: 1, date: "...", approval: "pending"}, 
 *     ...
 *   ), 
 *   tasks: Map.new(
 *	1=>{id: 1, hours: 0, notes: "", job: null, sheet_id: null},
 *	...
 *   ),
 *   jobs: [{...},{...}, ...]
 *   )
 * }
 */

function new_sheet(st0 = {date: null, approval:"pending", errors: null, id: null, worker_id: null}, action) {
  switch (action.type) {
    case 'CHANGE_NEW_SHEET':
      return Object.assign({}, st0, action.data);
    default:
      return st0;
  }
}

function login(st0 = {email: "", password: "", errors: null}, action) {
  switch(action.type) {
    case 'CHANGE_LOGIN':
      return Object.assign({}, st0, action.data);
    default:
      return st0;
  }
}

function forms(st0, action) {
  let reducer = combineReducers({
    new_sheet, 
    login,
  });
  return reducer(st0, action);
}

function users(st0 = new Map(), action) {
  return st0;
}

function sheets(st0 = new Map(), action) {
  switch (action.type) {
    case 'ADD_SHEETS':
      let st1 = new Map(st0);
      for (let sheet of action.data) {
        st1.set(sheet.id, sheet);
      }
      return st1;
    default:
      return st0;
  }
}

function jobs(st0 = new Map(), action) {
  switch (action.type) {
    case 'ADD_JOBS':
      let st1 = new Map(st0);
      for (let job of action.data) {
        st1.set(job.id,job);
      }
      return st1;
    default:
      return st0;
  }
}

let session0 = localStorage.getItem('session');
if (session0) {
  session0 = JSON.parse(session0);
}
function session(st0 = session0, action) {
  switch (action.type) {
    case 'LOG_IN':
      return action.data;
    case 'LOG_OUT':
      return null;
    default:
      return st0;
  }
}

function root_reducer(st0, action) {
  console.log("root reducer", st0, action);
  let reducer = combineReducers({
    forms,
    users,
    jobs,
    session,
  });
  return deepFreeze(reducer(st0, action));
}

let store = createStore(root_reducer);
export default store;
