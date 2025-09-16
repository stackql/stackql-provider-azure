--- 
title: email_registrations
hide_title: false
hide_table_of_contents: false
keywords:
  - email_registrations
  - data_share
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

Creates, updates, deletes, gets or lists an <code>email_registrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_registrations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.email_registrations" /></td></tr>
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
    <td><a href="#activate_email"><CopyableCode code="activate_email" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Activate the email registration for the current tenant</td>
</tr>
<tr>
    <td><a href="#register_email"><CopyableCode code="register_email" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Register an email for the current tenant</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the registration</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The api version to use.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="activate_email"
    values={[
        { label: 'activate_email', value: 'activate_email' },
        { label: 'register_email', value: 'register_email' }
    ]}
>
<TabItem value="activate_email">

Activate the email registration for the current tenant

```sql
EXEC azure.data_share.email_registrations.activate_email 
@location='{{ location }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"activationCode": "{{ activationCode }}"
}'
;
```
</TabItem>
<TabItem value="register_email">

Register an email for the current tenant

```sql
EXEC azure.data_share.email_registrations.register_email 
@location='{{ location }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
