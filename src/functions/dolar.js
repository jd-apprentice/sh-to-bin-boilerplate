#!/usr/bin/env node

async function getDolarBlue() {
    try {
        const url = 'https://api.bluelytics.com.ar/v2/latest';
        const response = await fetch(url);

        if (response.ok) {
            const data = await response.text();
            console.log(data);
        }

    } catch (error) {
        console.error('Error:', error);
    }
}

getDolarBlue();
