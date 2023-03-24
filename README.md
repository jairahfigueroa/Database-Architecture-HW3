# Database-Architecture-HW3

1.  To get a feel for real data, you will use a website as the basis for your database. "Sign up" for a topic by going to the Discussion Board on Canvas by posting a response to the topic thread to pick a topic/website that has not been chosen thus far. You may use other websites to get more information to fill out your database. As a quick example, you could use wikipedia to get more detailed information about a website on fish.

2. Using the OneTable.docx example as a template,

-Create tables of sample data that you want to include in your database

-You need at least 20 distinct columns, though you can spread them across multiple tables

-You will eventually need enough data for 6 entities (see next step). The point is for there to be enough “complexity” to the data

-You do not need to cover all the data from your source, so it is fine to pick a few representative attributes  

-The entities should be related to each other – if we treat the entities as nodes in a graph, the graph must be connected

-You need at least 2 different values for each column

-For the data you are listing, include references from your website (or related reference) – you should list every web page that you use (not just the home page)

3. Define an (extended) Entity-Relationship model for this data. Following the requirements for entities, divide up the attributes from the columns from the previous step into appropriate entities and describe their characteristics as follows:

-Indicate which attribute(s) is the key. That is, which attribute(s) uniquely identify instances of each entity.

* If there is more than one candidate key, indicate this
-If any attributes are composite, separate them into the appropriate "sub-attributes", continuing until you are left with only attributes that cannot be broken down further.

* If any of these composite attributes is represented as a single data value on your website, like if it is put into one column of a table there, explain why the components of the attribute may need to be accessed separately.

-For each attribute, indicate whether it can be null or not

-If any attributes are multivalued or derived from other attributes, indicate this.

-See if you have at least 6 entities. If you do not, go back to your website to get more data until you do (include any new references). Do not forcibly split one entity into two entities just to meet the requirement. You will be penalized if your entities are not chosen well.


4. Describe each relationship among your entities. Describe the cardinality as well as the participation of each entity involved in each relationship.


5. Write 10 queries, but in plain English (no SQL yet)

-Each query will result in a table of data – show a sample answer using data from the website

-At least 7 of the queries should include values from or based on data from 2 or more entities

-Examples from the Company example in Elmasri:

1.“Get the first, middle and last name of employees who do not have a supervisor”

   Answer is the single row “James”, “E”, “Borg”
   
2. “Get the name of each department and the number of employees in each department” – uses data from both Department and Employee entities, with the NUM_EMPS attribute being an example of a derived attribute
    
    Answer is 3 rows:
    

DNAME                          NUM_EMPS

Headquarters                      1

Administration                    3

Research                          4

    
