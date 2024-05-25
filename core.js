async function GetData() {
    return await fetch('./data.json')
        .then(r => r)
        .then(r => r.json());
}

async function Mount() {
    const data = await GetData();
    const types = Object.keys(data);

    let tableContents = '';
    
    for(const type of types) {
        const files = data[type];
        files.forEach((f, i) => {
            tableContents += `
                <tr>
                    <td><a target='_blank' href='${f.link}'>${f.name}</a></td>
                    <td>${type}</td>
                    <td>${f.os}</td>
                    <td>${f.creation}</td>
                    <td>${f.modified}</td>
                </tr>
            `;
        });
    }

    document.getElementById('tbody').innerHTML = tableContents;
}

Mount();