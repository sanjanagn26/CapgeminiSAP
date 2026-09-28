namespace ssapplication;

entity Album{
    key ID: Integer;
    Title: String(120);
    Description: String(255);
    View: Integer;
    photos: Association to many Photo on photos.Album = $self;
}

entity Location{
    key ID: Integer;
    Name: String(200);
    Shortname: String(50);
    photos: Association to many Photo on photos.Location = $self;
}

entity Member{
    key ID: Integer;
    Name: String(255);
    PhoneNumber: String(20);
    Email: String(200);
    Address: String(255);
    photos: Association to many Photo on photos.Member = $self;
}

entity Photo{
    key ID: Integer;
    Album: Association to one Album;
    Location: Association to one Location;
    Member: Association to one Member;
    Title: String(120);
    Description: String(255);
    Privacy: String(20);
    UploadDate: Date;
    View: Integer;
    ImagePath: String(50);
    comment: Association to many Comment on comment.Photo = $self;
    tagPhoto: Association to many TagPhoto on tagPhoto.Photo = $self;
}

entity Comment{
    key ID: Integer;
    Photo: Association to one Photo;
    PostDate: Date;
    Content: String(255);
}

entity Tag{
    key ID: Integer;
    Title: String(120);
    tagPhoto: Association to many TagPhoto on tagPhoto.Tag = $self;
}

entity TagPhoto{
    key ID: Integer;
    Tag: Association to one Tag;
    Photo: Association to one Photo;
}