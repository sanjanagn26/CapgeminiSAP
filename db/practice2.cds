namespace ssapplication;

entity Albumm{
    key ID: Integer;
    Title: String(120);
    Description: String(255);
    View: Integer;
    photos: Association to many Photoo on photos.Album = $self;
}

entity Locationn{
    key ID: Integer;
    Name: String(200);
    Shortname: String(50);
    photos: Association to many Photoo on photos.Location = $self;
}

entity Memberr{
    key ID: Integer;
    Name: String(255);
    PhoneNumber: String(20);
    Email: String(200);
    Address: String(255);
    photos: Association to many Photoo on photos.Member = $self;
}

entity Photoo{
    key ID: Integer;
    Album: Association to one Albumm;
    Location: Association to one Locationn;
    Member: Association to one Memberr;
    Title: String(120);
    Description: String(255);
    Privacy: String(20);
    UploadDate: Date;
    View: Integer;
    ImagePath: String(50);
    comment: Association to many Commentt on comment.Photo = $self;
    tagPhoto: Association to many TagPhotoo on tagPhoto.Photo = $self;
}

entity Commentt{
    key ID: Integer;
    Photo: Association to one Photoo;
    PostDate: Date;
    Content: String(255);
}

entity Tagg{
    key ID: Integer;
    Title: String(120);
    tagPhoto: Association to many TagPhotoo on tagPhoto.Tag = $self;
}

entity TagPhotoo{
    key ID: Integer;
    Tag: Association to one Tagg;
    Photo: Association to one Photoo;
}

//just use the command "cds add data" to create all csv files with data headings which includes all the entities in this code. 
//Just make sure you're in the correct directory. 
//If not, use cd <filename> to get into that file/folder. 
//To get back to main folder/file, tpye "cd .."