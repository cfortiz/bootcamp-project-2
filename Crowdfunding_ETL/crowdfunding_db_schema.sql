-- Create tables without foreign key constraints at first
create table campaign (
    cf_id int not null,
    contact_id int not null,
    company_name varchar(100) not null, -- max len in data is 33, make it 100
    description text not null,
    goal numeric(10, 2) not null, -- min 100.00 max 199,200.00, good fit
    pledged numeric(10, 2) not null, -- min 0.00 max 199,110.00, good fit
    outcome varchar(10) not null,
    backers_count int not null,
    country char(2) not null, -- all are 2 char country codes
    currency char(3) not null, -- all are 3 char currency codes
    launch_date date not null, -- all stored as 10 char dates in YYYY-MM-DD format in CSV
    end_date date not null, -- all stored as 10 char dates in YYYY-MM-DD format in CSV
    category_id varchar(13) not null, -- 13 should be enough, max 10 digits for int part, 3 chars for prefix
    subcategory_id varchar(16) not null, -- 16 should be enough, max 10 digits for int part, 3 chars for prefix
    constraint pk_campaign primary key (cf_id)
);

create table category (
    category_id varchar(13) not null, -- 13 should be enough, max 10 digits for int part, 3 chars for prefix
    category_name varchar(30) not null, -- 30 should be enough, max 12 chars in current data
    constraint pk_category primary key (category_id)
);

create table subcategory (
    subcategory_id varchar(10) not null, -- 16 should be enough, max 10 digits for int part, 3 chars for prefix
    subcategory_name varchar(30) not null, -- 30 should be enough, max 17 chars in current data
    constraint pk_subcategory primary key (subcategory_id)
);

-- 100 characters should more than suffice for first name, last name, or email
create table contacts (
    contact_id int not null,
    first_name varchar(100) not null, 
    last_name varchar(100) not null,
    email varchar(100) not null,
    constraint pk_contacts primary key (contact_id)
);

-- Add foreign key constraints to insure data coherence.
alter table campaign add constraint
fk_campaign_contact_id foreign key(contact_id)
references contacts(contact_id);

alter table campaign add constraint
fk_campaign_category_id foreign key(category_id)
references category(category_id);

alter table campaign add constraint
fk_campaign_subcategory_id foreign key(subcategory_id)
references subcategory(subcategory_id);
