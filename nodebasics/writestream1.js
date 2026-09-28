const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, 'sample.csv');

// Create file and write 100 lines using createWriteStream
const writeStream = fs.createWriteStream(filePath);

for (let i = 1; i <= 100; i++) {
  writeStream.write(`Line ${i}\n`);
}

writeStream.end();

// Read file after writing is completed
writeStream.on('finish', () => {
  console.log('File created successfully.\n');

  fs.readFile(filePath, 'utf8', (err, data) => {
    if (err) {
      console.error('Error reading file:', err);
      return;
    }

    console.log('File Content:');
    console.log(data);
  });
});