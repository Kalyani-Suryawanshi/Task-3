use broskies_hub;

## stored procedure with the example of adding product

delimiter //
create procedure adding_product(In Title varchar(200), In ISBN varchar(20),In Publisher varchar(100),In YearPublished int)
begin
INSERT INTO Books (Title, ISBN, Publisher, YearPublished) VALUES
(Title, ISBN, Publisher, YearPublished);
end //
delimiter //

## to call stored procedure

call adding_product('The Great Gatsby', '9780743273565', 'Scribner', 1925);

select * from books; 

## Stored procedure with update Query - To update member address

DELIMITER //
CREATE PROCEDURE UpdateStock(In BorrowID Int, In ReturnDate  date)
BEGIN
UPDATE Borrow SET ReturnDate = ReturnDate WHERE BorrowID = BorrowID;
END //
DELIMITER //

## To call this stored procedure

call UpdateStock("1", "2025-10-05");

select * from borrow ;


## Stored procedure with update Query - To update member address

DELIMITER //
CREATE PROCEDURE UpdateMemberAddress(In p_MemberID Int, In p_NewAddress VARCHAR(255))
BEGIN
UPDATE Members SET Address = p_NewAddress WHERE MemberID = p_MemberID;
END //
DELIMITER //

## To call this stored procedure

call UpdateMemberAddress(1, "Delhi");

select * from members;