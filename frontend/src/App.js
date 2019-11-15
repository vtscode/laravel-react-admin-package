// in src/App.js
import React from 'react';
import { Admin, Resource } from 'react-admin';
import { PostList, PostEdit, PostCreate,PostShow } from './posts';
import PostIcon from '@material-ui/icons/Book';
import Dashboard from './Dashboard';
import authProvider from './authProvider';
import dataProvider from './dataProviderFix';


const App = () => (
    <Admin dashboard={Dashboard} authProvider={authProvider} dataProvider={dataProvider}>
        <Resource name="products" list={PostList} edit={PostEdit} create={PostCreate} icon={PostIcon} show={PostShow} />
    </Admin>
);
export default App;
