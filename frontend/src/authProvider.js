import { AUTH_LOGIN, AUTH_LOGOUT, AUTH_ERROR, AUTH_CHECK,AUTH_GET_PERMISSIONS } from 'react-admin';

export default (type, params) => {
    // called when the user attempts to log in
    if (type === AUTH_LOGIN) {
        const { username, password } = params;
        const request = new Request('http://localhost:8000/api/login', {
            method: 'POST',
            body: JSON.stringify({ username, password }),
            headers: new Headers({ 'Content-Type': 'application/json' }),
        })
        return fetch(request)
            .then(response => {
                if (response.status < 200 || response.status >= 300) {
                    throw new Error(response.statusText);
                }
                return response.json();
            })
            .then((result) => {
                const {token} = result.success;
                localStorage.setItem('token', token);
                return Promise.resolve({ redirectTo: '/' });
            });
    }
    // called when the user clicks on the logout button
    if (type === AUTH_LOGOUT) {
        localStorage.removeItem('token');
        return Promise.resolve();
    }
    // called when the API returns an error
    if (type === AUTH_ERROR) {
        const { status } = params;
        if (status === 401 || status === 403) {
            localStorage.removeItem('token');
            return Promise.reject();
        }
        return Promise.resolve();
    }
    // called when the user navigates to a new location
    if (type === AUTH_CHECK) {
        return localStorage.getItem('token')
            ? Promise.resolve({ redirectTo: '/' })
            : Promise.reject();
    }
    if (type === AUTH_GET_PERMISSIONS) {
        const token = localStorage.getItem('token');
        return token ? Promise.resolve(token) : Promise.reject();
    }
    return Promise.reject('Unknown method');
};