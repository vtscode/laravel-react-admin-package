import { fetchUtils } from 'react-admin';
import simpleRestProvider from 'ra-data-simple-rest';

const httpClient = (url, options = {}) => {
    const token = localStorage.getItem('token');
    if (!options.headers) {
        options.headers = new Headers({ 
            Accept: 'application/json',
            'Access-Control-Expose-Headers': 'Content-Range'
        });
    }
    // add your own headers here
    options.headers.set('Authorization', `Bearer ${token}`);
    return fetchUtils.fetchJson(url, options);
}

export default simpleRestProvider('http://localhost:8000/api', httpClient);