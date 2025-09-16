--- 
title: certificate_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - certificate_profiles
  - code_signing
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

Creates, updates, deletes, gets or lists a <code>certificate_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>certificate_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.code_signing.certificate_profiles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_code_signing_account', value: 'list_by_code_signing_account' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_code_signing_account">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a></td>
    <td></td>
    <td>Get details of a certificate profile.</td>
</tr>
<tr>
    <td><a href="#list_by_code_signing_account"><CopyableCode code="list_by_code_signing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td></td>
    <td>List certificate profiles under a trusted signing account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a></td>
    <td></td>
    <td>Create a certificate profile.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a></td>
    <td></td>
    <td>Delete a certificate profile.</td>
</tr>
<tr>
    <td><a href="#revoke_certificate"><CopyableCode code="revoke_certificate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-serialNumber"><code>serialNumber</code></a>, <a href="#parameter-thumbprint"><code>thumbprint</code></a>, <a href="#parameter-effectiveAt"><code>effectiveAt</code></a>, <a href="#parameter-reason"><code>reason</code></a></td>
    <td></td>
    <td>Revoke a certificate under a certificate profile.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>Trusted Signing account name.</td>
</tr>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Certificate profile name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_code_signing_account', value: 'list_by_code_signing_account' }
    ]}
>
<TabItem value="get">

Get details of a certificate profile.

```sql
SELECT
properties
FROM azure_extras.code_signing.certificate_profiles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND profileName = '{{ profileName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_code_signing_account">

List certificate profiles under a trusted signing account.

```sql
SELECT
properties
FROM azure_extras.code_signing.certificate_profiles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create a certificate profile.

```sql
INSERT INTO azure_extras.code_signing.certificate_profiles (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
profileName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ profileName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: certificate_profiles
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the certificate_profiles resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the certificate_profiles resource.
    - name: accountName
      value: string
      description: Required parameter for the certificate_profiles resource.
    - name: profileName
      value: string
      description: Required parameter for the certificate_profiles resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete a certificate profile.

```sql
DELETE FROM azure_extras.code_signing.certificate_profiles
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND profileName = '{{ profileName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="revoke_certificate"
    values={[
        { label: 'revoke_certificate', value: 'revoke_certificate' }
    ]}
>
<TabItem value="revoke_certificate">

Revoke a certificate under a certificate profile.

```sql
EXEC azure_extras.code_signing.certificate_profiles.revoke_certificate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@profileName='{{ profileName }}' --required 
@@json=
'{
"serialNumber": "{{ serialNumber }}", 
"thumbprint": "{{ thumbprint }}", 
"effectiveAt": "{{ effectiveAt }}", 
"reason": "{{ reason }}", 
"remarks": "{{ remarks }}"
}'
;
```
</TabItem>
</Tabs>
