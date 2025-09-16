--- 
title: draft_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - draft_packages
  - test_base
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

Creates, updates, deletes, gets or lists a <code>draft_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>draft_packages</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.draft_packages" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

The Test Base Draft Package was successfully found.

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
    <td>Test Base Draft Package properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_test_base_account">

The operation is completed.

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
    <td>Test Base Draft Package properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a></td>
    <td></td>
    <td>Gets a Test Base Draft Package.</td>
</tr>
<tr>
    <td><a href="#list_by_test_base_account"><CopyableCode code="list_by_test_base_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a></td>
    <td><a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-editPackage"><code>editPackage</code></a></td>
    <td>Lists all the draft packages under a test base account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a></td>
    <td></td>
    <td>Creates or replaces a Test Base Draft Package.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a></td>
    <td></td>
    <td>Updates an existing Test Base Draft Package.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a></td>
    <td></td>
    <td>Deletes a Test Base Draft Package.</td>
</tr>
<tr>
    <td><a href="#copy_from_package"><CopyableCode code="copy_from_package" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a>, <a href="#parameter-packageId"><code>packageId</code></a></td>
    <td></td>
    <td>Copy package file and metadata from a package to this draft package</td>
</tr>
<tr>
    <td><a href="#extract_file"><CopyableCode code="extract_file" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a>, <a href="#parameter-sourceFile"><code>sourceFile</code></a></td>
    <td></td>
    <td>Performs extracting file operation for a Test Base Draft Package</td>
</tr>
<tr>
    <td><a href="#generate_folders_and_scripts"><CopyableCode code="generate_folders_and_scripts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-draftPackageName"><code>draftPackageName</code></a></td>
    <td></td>
    <td>Generates folders and scripts</td>
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
<tr id="parameter-draftPackageName">
    <td><CopyableCode code="draftPackageName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Draft Package.</td>
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
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
</tr>
<tr id="parameter-editPackage">
    <td><CopyableCode code="editPackage" /></td>
    <td><code>boolean</code></td>
    <td>Parameter used to filter draft packages by editPackage property.</td>
</tr>
<tr id="parameter-packageName">
    <td><CopyableCode code="packageName" /></td>
    <td><code>string</code></td>
    <td>Parameter used to filter draft packages by linked Test Base Package.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_test_base_account', value: 'list_by_test_base_account' }
    ]}
>
<TabItem value="get">

Gets a Test Base Draft Package.

```sql
SELECT
properties
FROM azure_extras.test_base.draft_packages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND draftPackageName = '{{ draftPackageName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_test_base_account">

Lists all the draft packages under a test base account.

```sql
SELECT
properties
FROM azure_extras.test_base.draft_packages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND packageName = '{{ packageName }}'
AND editPackage = '{{ editPackage }}'
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

Creates or replaces a Test Base Draft Package.

```sql
INSERT INTO azure_extras.test_base.draft_packages (
data__properties,
subscriptionId,
resourceGroupName,
testBaseAccountName,
draftPackageName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ testBaseAccountName }}',
'{{ draftPackageName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: draft_packages
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the draft_packages resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the draft_packages resource.
    - name: testBaseAccountName
      value: string
      description: Required parameter for the draft_packages resource.
    - name: draftPackageName
      value: string
      description: Required parameter for the draft_packages resource.
    - name: properties
      value: object
      description: |
        Test Base Draft Package properties.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates an existing Test Base Draft Package.

```sql
UPDATE azure_extras.test_base.draft_packages
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND draftPackageName = '{{ draftPackageName }}' --required
RETURNING
properties;
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

Deletes a Test Base Draft Package.

```sql
DELETE FROM azure_extras.test_base.draft_packages
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND draftPackageName = '{{ draftPackageName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="copy_from_package"
    values={[
        { label: 'copy_from_package', value: 'copy_from_package' },
        { label: 'extract_file', value: 'extract_file' },
        { label: 'generate_folders_and_scripts', value: 'generate_folders_and_scripts' }
    ]}
>
<TabItem value="copy_from_package">

Copy package file and metadata from a package to this draft package

```sql
EXEC azure_extras.test_base.draft_packages.copy_from_package 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@testBaseAccountName='{{ testBaseAccountName }}' --required, 
@draftPackageName='{{ draftPackageName }}' --required 
@@json=
'{
"packageId": "{{ packageId }}"
}'
;
```
</TabItem>
<TabItem value="extract_file">

Performs extracting file operation for a Test Base Draft Package

```sql
EXEC azure_extras.test_base.draft_packages.extract_file 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@testBaseAccountName='{{ testBaseAccountName }}' --required, 
@draftPackageName='{{ draftPackageName }}' --required 
@@json=
'{
"fileType": "{{ fileType }}", 
"sourceFile": "{{ sourceFile }}", 
"intuneAppId": "{{ intuneAppId }}"
}'
;
```
</TabItem>
<TabItem value="generate_folders_and_scripts">

Generates folders and scripts

```sql
EXEC azure_extras.test_base.draft_packages.generate_folders_and_scripts 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@testBaseAccountName='{{ testBaseAccountName }}' --required, 
@draftPackageName='{{ draftPackageName }}' --required 
@@json=
'{
"forceGenerate": {{ forceGenerate }}
}'
;
```
</TabItem>
</Tabs>
