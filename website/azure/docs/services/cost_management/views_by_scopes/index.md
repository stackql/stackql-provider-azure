--- 
title: views_by_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - views_by_scopes
  - cost_management
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>views_by_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>views_by_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.views_by_scopes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-viewName"><code>viewName</code></a></td>
    <td></td>
    <td>The operation to create or update a view. Update operation requires latest eTag to be set in the request. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope associated with view operations. This includes 'subscriptions/&#123;subscriptionId&#125;' for subscription scope, 'subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/departments/&#123;departmentId&#125;' for Department scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/enrollmentAccounts/&#123;enrollmentAccountId&#125;' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/invoiceSections/&#123;invoiceSectionId&#125;' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/&#123;managementGroupId&#125;' for Management Group scope, 'providers/Microsoft.CostManagement/externalBillingAccounts/&#123;externalBillingAccountName&#125;' for External Billing Account scope and 'providers/Microsoft.CostManagement/externalSubscriptions/&#123;externalSubscriptionName&#125;' for External Subscription scope.</td>
</tr>
<tr id="parameter-viewName">
    <td><CopyableCode code="viewName" /></td>
    <td><code>string</code></td>
    <td>View name</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

The operation to create or update a view. Update operation requires latest eTag to be set in the request. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.

```sql
INSERT INTO azure.cost_management.views_by_scopes (
data__eTag,
data__properties,
scope,
viewName
)
SELECT 
'{{ eTag }}',
'{{ properties }}',
'{{ scope }}',
'{{ viewName }}'
RETURNING
id,
name,
eTag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: views_by_scopes
  props:
    - name: scope
      value: string
      description: Required parameter for the views_by_scopes resource.
    - name: viewName
      value: string
      description: Required parameter for the views_by_scopes resource.
    - name: eTag
      value: string
      description: |
        eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
    - name: properties
      value: object
      description: |
        The properties of the view.
```
</TabItem>
</Tabs>
