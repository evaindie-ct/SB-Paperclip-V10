-- San Bernardo Paperclip org hierarchy repair
-- This file uses the Paperclip-assigned runtime company ID from .paperclip-current-company.json when available.
-- Do not hardcode company IDs in repo source. Regenerate this after creating/discovering the company.

\set company_id '9a01db59-f3d5-44c9-ad31-b28d084fa03a'
BEGIN;
UPDATE agents SET reports_to = NULL WHERE company_id::text = :'company_id';

-- Hermes Agent -> CEO
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Hermes Agent'
  AND parent.name = 'CEO';

-- Librarian Worker -> Hermes Agent
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Librarian Worker'
  AND parent.name = 'Hermes Agent';

-- Operations Coordinator -> Hermes Agent
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Operations Coordinator'
  AND parent.name = 'Hermes Agent';

-- Sales Director -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Sales Director'
  AND parent.name = 'Operations Coordinator';

-- Sales Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Sales Lead'
  AND parent.name = 'Sales Director';

-- Web Design / Ecommerce Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Web Design / Ecommerce Lead'
  AND parent.name = 'Sales Director';

-- Automation Operator -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Automation Operator'
  AND parent.name = 'Operations Coordinator';

-- B2B Sales Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'B2B Sales Lead'
  AND parent.name = 'Sales Director';

-- Commercial Finance Lead -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Commercial Finance Lead'
  AND parent.name = 'Operations Coordinator';

-- Creative Direction Approval -> Hermes Agent
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Creative Direction Approval'
  AND parent.name = 'Hermes Agent';

-- Customer Service Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Customer Service Lead'
  AND parent.name = 'Sales Director';

-- Customer Success / Implementation Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Customer Success / Implementation Lead'
  AND parent.name = 'Sales Director';

-- Data / Reporting Operator -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Data / Reporting Operator'
  AND parent.name = 'Operations Coordinator';

-- Design Lead -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Design Lead'
  AND parent.name = 'Creative Direction Approval';

-- Ecommerce Operations Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Ecommerce Operations Lead'
  AND parent.name = 'Sales Director';

-- Finance / Collections Lead -> Commercial Finance Lead
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Finance / Collections Lead'
  AND parent.name = 'Commercial Finance Lead';

-- Industrial Director -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Industrial Director'
  AND parent.name = 'Operations Coordinator';

-- Inventory Planner -> Commercial Finance Lead
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Inventory Planner'
  AND parent.name = 'Commercial Finance Lead';

-- Legal / IP / Corporate Affairs Lead -> Operations Coordinator
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Legal / IP / Corporate Affairs Lead'
  AND parent.name = 'Operations Coordinator';

-- Market Research / Directory Research Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Market Research / Directory Research Lead'
  AND parent.name = 'Sales Director';

-- Marketing Lead -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Marketing Lead'
  AND parent.name = 'Creative Direction Approval';

-- Packaging Designer -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Packaging Designer'
  AND parent.name = 'Creative Direction Approval';

-- Procurement Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Procurement Lead'
  AND parent.name = 'Industrial Director';

-- Product Catalog Lead -> Sales Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Product Catalog Lead'
  AND parent.name = 'Sales Director';

-- Production Planning & Technical Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Production Planning & Technical Lead'
  AND parent.name = 'Industrial Director';

-- Quality & Certification Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Quality & Certification Lead'
  AND parent.name = 'Industrial Director';

-- Supplier / Factory Liaison -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Supplier / Factory Liaison'
  AND parent.name = 'Industrial Director';

-- Tax / Accounting Lead -> Commercial Finance Lead
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Tax / Accounting Lead'
  AND parent.name = 'Commercial Finance Lead';

-- Tech Pack / Product Development Lead -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Tech Pack / Product Development Lead'
  AND parent.name = 'Creative Direction Approval';

-- Template / Production Designer -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Template / Production Designer'
  AND parent.name = 'Creative Direction Approval';

-- Knitwear Technical Specialist -> Creative Direction Approval
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Knitwear Technical Specialist'
  AND parent.name = 'Creative Direction Approval';

-- Warehouse Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Warehouse Lead'
  AND parent.name = 'Industrial Director';

-- Billing / Subscription Operations Lead -> Commercial Finance Lead
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Billing / Subscription Operations Lead'
  AND parent.name = 'Commercial Finance Lead';

-- Customs / Compliance Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Customs / Compliance Lead'
  AND parent.name = 'Industrial Director';

-- Factory Sourcing Lead -> Industrial Director
UPDATE agents AS child
SET reports_to = parent.id
FROM agents AS parent
WHERE child.company_id = parent.company_id
  AND child.company_id::text = :'company_id'
  AND child.name = 'Factory Sourcing Lead'
  AND parent.name = 'Industrial Director';

SELECT child.name AS child, parent.name AS parent, child.reports_to
FROM agents child
LEFT JOIN agents parent ON parent.id = child.reports_to
WHERE child.company_id::text = :'company_id'
ORDER BY parent.name NULLS FIRST, child.name;
COMMIT;