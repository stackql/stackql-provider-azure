--- 
title: provider_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - provider_actions
  - app_compliance_automation
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>provider_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>provider_actions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.app_compliance_automation.provider_actions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_in_use_storage_accounts"
    values={[
        { label: 'list_in_use_storage_accounts', value: 'list_in_use_storage_accounts' }
    ]}
>
<TabItem value="list_in_use_storage_accounts">

Azure operation completed successfully.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="storageAccountList" /></td>
    <td><code>array</code></td>
    <td>The storage account list which in use in related reports.</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

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
    <td><a href="#list_in_use_storage_accounts"><CopyableCode code="list_in_use_storage_accounts" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>List the storage accounts which are in use by related reports</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Check if the given name is available for a report.</td>
</tr>
<tr>
    <td><a href="#onboard"><CopyableCode code="onboard" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionIds"><code>subscriptionIds</code></a></td>
    <td></td>
    <td>Onboard given subscriptions to Microsoft.AppComplianceAutomation provider.</td>
</tr>
<tr>
    <td><a href="#trigger_evaluation"><CopyableCode code="trigger_evaluation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceIds"><code>resourceIds</code></a></td>
    <td></td>
    <td>Trigger quick evaluation for the given subscriptions.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_in_use_storage_accounts"
    values={[
        { label: 'list_in_use_storage_accounts', value: 'list_in_use_storage_accounts' }
    ]}
>
<TabItem value="list_in_use_storage_accounts">

List the storage accounts which are in use by related reports

```sql
SELECT
storageAccountList
FROM azure_extras.app_compliance_automation.provider_actions
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'onboard', value: 'onboard' },
        { label: 'trigger_evaluation', value: 'trigger_evaluation' }
    ]}
>
<TabItem value="check_name_availability">

Check if the given name is available for a report.

```sql
EXEC azure_extras.app_compliance_automation.provider_actions.check_name_availability 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="onboard">

Onboard given subscriptions to Microsoft.AppComplianceAutomation provider.

```sql
EXEC azure_extras.app_compliance_automation.provider_actions.onboard 
@@json=
'{
"subscriptionIds": "{{ subscriptionIds }}"
}'
;
```
</TabItem>
<TabItem value="trigger_evaluation">

Trigger quick evaluation for the given subscriptions.

```sql
EXEC azure_extras.app_compliance_automation.provider_actions.trigger_evaluation 
@@json=
'{
"resourceIds": "{{ resourceIds }}"
}'
;
```
</TabItem>
</Tabs>
