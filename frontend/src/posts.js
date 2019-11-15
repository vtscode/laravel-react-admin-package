import React from 'react';
import {  Show, SimpleShowLayout, Filter, List,SimpleList,Responsive, Datagrid, TextField,EditButton,SimpleForm,DisabledInput,Edit,Create,LongTextInput,TextInput } from 'react-admin';

const PostTitle = ({ record }) => {
        return <span>Post {record ? `"${record.name}"` : ''}</span>;
    };

const PostFilter = (props) => (
    <Filter {...props}>
        <TextInput label="Search" source="q" alwaysOn />
        
        <TextInput source="name" allowEmpty />

    </Filter>
);


export const PostList = props => 
(
    <List filters={<PostFilter/>} {...props}>
    <Responsive
    small={
        <SimpleList
                primaryText={record => record.name}
                secondaryText={record => `${record.detail} views`}
                tertiaryText={record => `${record.created_at}`}
            />
        }
        medium={
            <Datagrid>
                <TextField source="name" />
                <TextField source="detail" />
                <EditButton label="Edit" />
            </Datagrid>
        }
    />
    </List>
);

export const PostShow = (props) => (
    <Show title={<PostTitle />} {...props}>
        <SimpleShowLayout>
            <TextField source="name" />
            <TextField source="detail" />
        </SimpleShowLayout>
    </Show>
);

export const PostEdit = props => (
    <Edit title={<PostTitle />} {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
            <TextInput source="name" />
           <LongTextInput source="detail" />
        </SimpleForm>
    </Edit>
);

export const PostCreate = props => (
    <Create {...props}>
        <SimpleForm>
            <TextInput source="name" />
            <LongTextInput source="detail" />
        </SimpleForm>
    </Create>
);