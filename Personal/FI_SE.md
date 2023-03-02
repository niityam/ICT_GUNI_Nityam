Software Development Life Cycle (SDLC)
---------------------------------------
It is a structured process used by software development teams to plan, design, develop, test, deploy, and maintain software products. , defining, design, coding, testing, deployment, and maintenance.

The purpose of SDLC is to ensure that the software product meets the customer's requirements, is delivered on time and within budget, and is of high quality and maintainable over its lifetime.


Phases:
1. Requirements Gathering:

Gather all the data like what the customer wants to build, who will be the end user, what is the objective of the product. SRS (Software Requirement Specification)


2. Defining:

Gathering the high-level requirements and refining them according to project goals

Functional vs Non Functional requrirement: Functional requirements describe what a software system should do, while non-functional requirements describe how a software system should perform. Non Functional: 
Portability,
Security,
Maintainability,
Reliability,
Scalability,
Performance,
Reusability,
Flexibility

3. Designing:

It is a mechanism to transform user requirements into some suitable form, which helps the programmer in software coding and implementation.

Internal design, also known as low-level design, is the process of creating detailed designs for individual software components or modules. It involves creating algorithms, data structures, and other technical details needed to implement the functionality specified in the requirements document.

External design, also known as high-level design, is the process of defining the overall architecture of the software system. It involves identifying the major components of the system, their relationships, and the interfaces between them. External design also includes defining the user interface and specifying the functionality that the system will provide.

The internal design stage comes after the external design stage. Once the external design is completed, the internal design can begin.

4. Coding:

The actual development starts and the product is built. Programming tools are used. Different high level programming languages such as C, C++, Pascal, Java and PHP are used for coding. 

5. Testing:

Code is tested against the requirements to make sure that the products are solving the needs addressed and gathered during the requirements stage.

6. Deployment:

Once the software is certified, and no bugs or errors are stated, then it is deployed. make a software system available for use. 

7. Maintainance:

Once when the client starts using the developed systems, then the real issues come up and requirements to be solved from time to time.

SDLC Models
------------

1. Waterfall

![image](https://user-images.githubusercontent.com/78067067/222524885-a1ac3f77-06c0-4b22-bb1b-ff0ea83a3549.png)

Seen Steady Downward Flow, One phase act as a input to other phase. 

Why to use: Requrirement are clearly defined, No need to change in requrirement in future, Project is Short, .

Why Not to use: Not good for Longterm/ Complex projects, Where requirement are not cleared, One way (We can't move to back stage after one stage is completed).

Note: No customer Interaction until project is completed, Required gathering one time.

2. Incremental Model:

![image](https://user-images.githubusercontent.com/78067067/222526374-bb713b0c-bcc1-4efa-963b-b567b08db2dd.png)

Why to use: Requrirement are clearly defined.

Why not to use: More resources are required, Not suitable for changing requrirement, Not good for smalled projects

Note: Required gathering one time, Major Functionality Defined only minor changes allowded, New Technology is used, More Customer Interaction.


3. Prototype Model

![image](https://user-images.githubusercontent.com/78067067/222527961-d92c2c70-6987-426d-bb52-457296135878.png)

Prototyping is used to evaluate developer proposals and try them out before implementation. Help to understand requirements better. 

Why to use: Where Requirement are not clear, More Customer Interaction, Better understading of project to use before development, Reduce cost (Defect can be detected earlier), missing functionality can be identified

Why not to use: Insufficient Requirement analysis leads to depend more on prototype, Scope could expand, Efforts to build prototype could be too much.

Spiral:

![image](https://user-images.githubusercontent.com/78067067/222529840-ffcfca87-3d44-41d9-82d7-cff2a735dbf6.png)

1. Requirements are gathered from the customers and the objectives are identified, at the start of every phase.

2. During the second quadrant, all the possible solutions are evaluated to select the best possible solution. Risks are resolved using the best possible strategy. At the end of this quadrant, the Prototype is built for the best possible solution.

3. During the third quadrant, the identified features are developed and verified through testing. At the end of the third quadrant, the next version of the software is available.

4. In the fourth quadrant, the Customers evaluate the so far developed version of the software. In the end, planning for the next phase is started.

Why to use: Combination of Waterfall + Iterative Model, Risk Evaluation Important, Long Term Project, Customer Not sure of Requirement, Requirements are complex, Good for large projects, Customer Interaction required

Why not to use: Complex Management, End project not known, Could be Infinite.

4. Agile Model:

![image](https://user-images.githubusercontent.com/78067067/222532523-86430b6e-e419-4f5b-a640-6f48c23b9b90.png)

Realistic Approach, Team work, Developed Rapidly, Suitable for Fixed & Changing requrirement, Easy to manage, Long projects.

Not suitable for complex dependencies, Leader or PM is must, Strict deadlines must follow, Low Documentation

RAD Model: Rapid Application Development

![image](https://user-images.githubusercontent.com/78067067/222533739-7e14ddcf-ccef-41df-b37b-078ce9722074.png)

Suits for Fixed requirements, Short Timeframe, No Budget constraints, Expensive tools are use
