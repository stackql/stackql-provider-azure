--- 
title: web_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - web_apps
  - app_service
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

Creates, updates, deletes, gets or lists a <code>web_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>web_apps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.web_apps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_instance_process_module_slot"
    values={[
        { label: 'get_instance_process_module_slot', value: 'get_instance_process_module_slot' },
        { label: 'get_instance_process_module', value: 'get_instance_process_module' },
        { label: 'get_instance_process_slot', value: 'get_instance_process_slot' },
        { label: 'list_instance_process_modules_slot', value: 'list_instance_process_modules_slot' },
        { label: 'list_instance_process_threads_slot', value: 'list_instance_process_threads_slot' },
        { label: 'get_instance_process', value: 'get_instance_process' },
        { label: 'list_instance_process_modules', value: 'list_instance_process_modules' },
        { label: 'list_instance_process_threads', value: 'list_instance_process_threads' },
        { label: 'get_instance_function_slot', value: 'get_instance_function_slot' },
        { label: 'get_instance_ms_deploy_status_slot', value: 'get_instance_ms_deploy_status_slot' },
        { label: 'get_instance_ms_deploy_log_slot', value: 'get_instance_ms_deploy_log_slot' },
        { label: 'list_instance_processes_slot', value: 'list_instance_processes_slot' },
        { label: 'get_instance_workflow_slot', value: 'get_instance_workflow_slot' },
        { label: 'get_instance_ms_deploy_status', value: 'get_instance_ms_deploy_status' },
        { label: 'get_instance_ms_deploy_log', value: 'get_instance_ms_deploy_log' },
        { label: 'list_instance_processes', value: 'list_instance_processes' },
        { label: 'list_backup_slots', value: 'list_backup_slots' },
        { label: 'get_diagnostic_logs_config_slot', value: 'get_diagnostic_logs_config_slot' },
        { label: 'list_instance_functions_slot', value: 'list_instance_functions_slot' },
        { label: 'list_instance_identifiers_slot', value: 'list_instance_identifiers_slot' },
        { label: 'list_instance_workflows_slot', value: 'list_instance_workflows_slot' },
        { label: 'get', value: 'get' },
        { label: 'get_diagnostic_logs_config', value: 'get_diagnostic_logs_config' },
        { label: 'list_instance_identifiers', value: 'list_instance_identifiers' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_instance_process_module_slot">

Module information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessModuleInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_process_module">

Module information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessModuleInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_process_slot">

Process information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_process_modules_slot">

Module information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessModuleInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_process_threads_slot">

Thread information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessThreadInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_process">

Process information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_process_modules">

Module information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessModuleInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_process_threads">

Thread information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessThreadInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_function_slot">

Function information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>FunctionEnvelope resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_ms_deploy_status_slot">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>MSDeployStatus resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_ms_deploy_log_slot">

MSDeploy log returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>MSDeployLog resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_processes_slot">

Process terminated.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_workflow_slot">

Workflow information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The resource kind.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Additional workflow properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_ms_deploy_status">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>MSDeployStatus resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_ms_deploy_log">

MSDeploy log returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>MSDeployLog resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_processes">

Process terminated.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ProcessInfo resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_backup_slots">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupItem resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_diagnostic_logs_config_slot">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>SiteLogsConfig resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_functions_slot">

Function information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>FunctionEnvelope resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_identifiers_slot">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>WebSiteInstanceStatus resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_workflows_slot">

Workflow information returned.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The resource kind.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Additional workflow properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

OK.

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
    <td><CopyableCode code="id" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended Location.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Site resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_diagnostic_logs_config">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>SiteLogsConfig resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_instance_identifiers">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>WebSiteInstanceStatus resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended Location.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Site resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended Location.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Site resource specific properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#get_instance_process_module_slot"><CopyableCode code="get_instance_process_module_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-baseAddress"><code>baseAddress</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get process information by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#get_instance_process_module"><CopyableCode code="get_instance_process_module" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-baseAddress"><code>baseAddress</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get process information by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#get_instance_process_slot"><CopyableCode code="get_instance_process_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get process information by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#list_instance_process_modules_slot"><CopyableCode code="list_instance_process_modules_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List module information for a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#list_instance_process_threads_slot"><CopyableCode code="list_instance_process_threads_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List the threads in a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#get_instance_process"><CopyableCode code="get_instance_process" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get process information by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#list_instance_process_modules"><CopyableCode code="list_instance_process_modules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List module information for a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#list_instance_process_threads"><CopyableCode code="list_instance_process_threads" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List the threads in a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#get_instance_function_slot"><CopyableCode code="get_instance_function_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-functionName"><code>functionName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get function information by its ID for web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#get_instance_ms_deploy_status_slot"><CopyableCode code="get_instance_ms_deploy_status_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get the status of the last MSDeploy operation.</td>
</tr>
<tr>
    <td><a href="#get_instance_ms_deploy_log_slot"><CopyableCode code="get_instance_ms_deploy_log_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get the MSDeploy Log for the last MSDeploy operation.</td>
</tr>
<tr>
    <td><a href="#list_instance_processes_slot"><CopyableCode code="list_instance_processes_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get list of processes for a web site, or a deployment slot, or for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#get_instance_workflow_slot"><CopyableCode code="get_instance_workflow_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#get_instance_ms_deploy_status"><CopyableCode code="get_instance_ms_deploy_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get the status of the last MSDeploy operation.</td>
</tr>
<tr>
    <td><a href="#get_instance_ms_deploy_log"><CopyableCode code="get_instance_ms_deploy_log" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get the MSDeploy Log for the last MSDeploy operation.</td>
</tr>
<tr>
    <td><a href="#list_instance_processes"><CopyableCode code="list_instance_processes" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get list of processes for a web site, or a deployment slot, or for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#list_backup_slots"><CopyableCode code="list_backup_slots" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets existing backups of an app.</td>
</tr>
<tr>
    <td><a href="#get_diagnostic_logs_config_slot"><CopyableCode code="get_diagnostic_logs_config_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets the logging configuration of an app.</td>
</tr>
<tr>
    <td><a href="#list_instance_functions_slot"><CopyableCode code="list_instance_functions_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for List the functions for a web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#list_instance_identifiers_slot"><CopyableCode code="list_instance_identifiers_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets all scale-out instances of an app.</td>
</tr>
<tr>
    <td><a href="#list_instance_workflows_slot"><CopyableCode code="list_instance_workflows_slot" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets the details of a web, mobile, or API app.</td>
</tr>
<tr>
    <td><a href="#get_diagnostic_logs_config"><CopyableCode code="get_diagnostic_logs_config" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets the logging configuration of an app.</td>
</tr>
<tr>
    <td><a href="#list_instance_identifiers"><CopyableCode code="list_instance_identifiers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets all scale-out instances of an app.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-includeSlots"><code>includeSlots</code></a></td>
    <td>Description for Gets all web, mobile, and API apps in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get all apps for a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a new web, mobile, or API app in an existing resource group, or updates an existing app.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a new web, mobile, or API app in an existing resource group, or updates an existing app.</td>
</tr>
<tr>
    <td><a href="#delete_instance_process_slot"><CopyableCode code="delete_instance_process_slot" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Terminate a process by its ID for a web site, or a deployment slot, or specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#delete_instance_process"><CopyableCode code="delete_instance_process" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Terminate a process by its ID for a web site, or a deployment slot, or specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#delete_instance_function_slot"><CopyableCode code="delete_instance_function_slot" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-functionName"><code>functionName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Delete a function for web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-deleteMetrics"><code>deleteMetrics</code></a>, <a href="#parameter-deleteEmptyServerFarm"><code>deleteEmptyServerFarm</code></a></td>
    <td>Description for Deletes a web, mobile, or API app, or one of the deployment slots.</td>
</tr>
<tr>
    <td><a href="#analyze_custom_hostname"><CopyableCode code="analyze_custom_hostname" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a></td>
    <td>Description for Analyze a custom hostname.</td>
</tr>
<tr>
    <td><a href="#apply_slot_config_to_production"><CopyableCode code="apply_slot_config_to_production" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSlot"><code>targetSlot</code></a>, <a href="#parameter-preserveVnet"><code>preserveVnet</code></a></td>
    <td></td>
    <td>Description for Applies the configuration settings from the target slot onto the current slot.</td>
</tr>
<tr>
    <td><a href="#backup"><CopyableCode code="backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a backup of an app.</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-backupId"><code>backupId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a specific backup to another app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#recover_site_configuration_snapshot"><CopyableCode code="recover_site_configuration_snapshot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-snapshotId"><code>snapshotId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Reverts the configuration of an app to a previous snapshot.</td>
</tr>
<tr>
    <td><a href="#start_continuous_web_job"><CopyableCode code="start_continuous_web_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Start a continuous web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#stop_continuous_web_job"><CopyableCode code="stop_continuous_web_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop a continuous web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#discover_backup"><CopyableCode code="discover_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Discovers an existing app backup that can be restored from a blob in Azure storage. Use this to get information about the databases stored in a backup.</td>
</tr>
<tr>
    <td><a href="#sync_functions"><CopyableCode code="sync_functions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Syncs function trigger metadata to the management database</td>
</tr>
<tr>
    <td><a href="#get_instance_process_dump"><CopyableCode code="get_instance_process_dump" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get a memory dump of a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#is_cloneable"><CopyableCode code="is_cloneable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Shows whether an app can be cloned to another resource group or subscription.</td>
</tr>
<tr>
    <td><a href="#migrate_storage"><CopyableCode code="migrate_storage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionName"><code>subscriptionName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a web app.</td>
</tr>
<tr>
    <td><a href="#migrate_my_sql"><CopyableCode code="migrate_my_sql" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Migrates a local (in-app) MySql database to a remote MySql database.</td>
</tr>
<tr>
    <td><a href="#start_web_site_network_trace"><CopyableCode code="start_web_site_network_trace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site (To be deprecated).</td>
</tr>
<tr>
    <td><a href="#start_web_site_network_trace_operation"><CopyableCode code="start_web_site_network_trace_operation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#stop_web_site_network_trace"><CopyableCode code="stop_web_site_network_trace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop ongoing capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#generate_new_site_publishing_password"><CopyableCode code="generate_new_site_publishing_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Generates a new publishing password for an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#add_premier_add_on"><CopyableCode code="add_premier_add_on" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-premierAddOnName"><code>premierAddOnName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Updates a named add-on of an app.</td>
</tr>
<tr>
    <td><a href="#put_private_access_vnet"><CopyableCode code="put_private_access_vnet" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Sets data around private site access enablement and authorized Virtual Networks that can access the site.</td>
</tr>
<tr>
    <td><a href="#approve_or_reject_private_endpoint_connection"><CopyableCode code="approve_or_reject_private_endpoint_connection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Approves or rejects a private endpoint connection</td>
</tr>
<tr>
    <td><a href="#reset_production_slot_config"><CopyableCode code="reset_production_slot_config" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Resets the configuration settings of the current slot if they were previously modified by calling the API with POST.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-softRestart"><code>softRestart</code></a>, <a href="#parameter-synchronous"><code>synchronous</code></a></td>
    <td>Description for Restarts an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#restore_from_backup_blob"><CopyableCode code="restore_from_backup_blob" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores an app from a backup blob in Azure Storage.</td>
</tr>
<tr>
    <td><a href="#restore_from_deleted_app"><CopyableCode code="restore_from_deleted_app" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a deleted web app to this web app.</td>
</tr>
<tr>
    <td><a href="#restore_snapshot"><CopyableCode code="restore_snapshot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a web app from a snapshot.</td>
</tr>
<tr>
    <td><a href="#install_site_extension"><CopyableCode code="install_site_extension" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-siteExtensionId"><code>siteExtensionId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Install site extension on a web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#analyze_custom_hostname_slot"><CopyableCode code="analyze_custom_hostname_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-hostName"><code>hostName</code></a></td>
    <td>Description for Analyze a custom hostname.</td>
</tr>
<tr>
    <td><a href="#apply_slot_configuration_slot"><CopyableCode code="apply_slot_configuration_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSlot"><code>targetSlot</code></a>, <a href="#parameter-preserveVnet"><code>preserveVnet</code></a></td>
    <td></td>
    <td>Description for Applies the configuration settings from the target slot onto the current slot.</td>
</tr>
<tr>
    <td><a href="#backup_slot"><CopyableCode code="backup_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Creates a backup of an app.</td>
</tr>
<tr>
    <td><a href="#restore_slot"><CopyableCode code="restore_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-backupId"><code>backupId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a specific backup to another app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#recover_site_configuration_snapshot_slot"><CopyableCode code="recover_site_configuration_snapshot_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-snapshotId"><code>snapshotId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Reverts the configuration of an app to a previous snapshot.</td>
</tr>
<tr>
    <td><a href="#start_continuous_web_job_slot"><CopyableCode code="start_continuous_web_job_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Start a continuous web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#stop_continuous_web_job_slot"><CopyableCode code="stop_continuous_web_job_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop a continuous web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#discover_backup_slot"><CopyableCode code="discover_backup_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Discovers an existing app backup that can be restored from a blob in Azure storage. Use this to get information about the databases stored in a backup.</td>
</tr>
<tr>
    <td><a href="#sync_functions_slot"><CopyableCode code="sync_functions_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Syncs function trigger metadata to the management database</td>
</tr>
<tr>
    <td><a href="#get_instance_process_dump_slot"><CopyableCode code="get_instance_process_dump_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-processId"><code>processId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get a memory dump of a process by its ID for a specific scaled-out instance in a web site.</td>
</tr>
<tr>
    <td><a href="#is_cloneable_slot"><CopyableCode code="is_cloneable_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Shows whether an app can be cloned to another resource group or subscription.</td>
</tr>
<tr>
    <td><a href="#start_web_site_network_trace_slot"><CopyableCode code="start_web_site_network_trace_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site (To be deprecated).</td>
</tr>
<tr>
    <td><a href="#start_web_site_network_trace_operation_slot"><CopyableCode code="start_web_site_network_trace_operation_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#stop_web_site_network_trace_slot"><CopyableCode code="stop_web_site_network_trace_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop ongoing capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#generate_new_site_publishing_password_slot"><CopyableCode code="generate_new_site_publishing_password_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Generates a new publishing password for an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#add_premier_add_on_slot"><CopyableCode code="add_premier_add_on_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-premierAddOnName"><code>premierAddOnName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Updates a named add-on of an app.</td>
</tr>
<tr>
    <td><a href="#put_private_access_vnet_slot"><CopyableCode code="put_private_access_vnet_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Sets data around private site access enablement and authorized Virtual Networks that can access the site.</td>
</tr>
<tr>
    <td><a href="#approve_or_reject_private_endpoint_connection_slot"><CopyableCode code="approve_or_reject_private_endpoint_connection_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Approves or rejects a private endpoint connection</td>
</tr>
<tr>
    <td><a href="#reset_slot_configuration_slot"><CopyableCode code="reset_slot_configuration_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Resets the configuration settings of the current slot if they were previously modified by calling the API with POST.</td>
</tr>
<tr>
    <td><a href="#restart_slot"><CopyableCode code="restart_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-softRestart"><code>softRestart</code></a>, <a href="#parameter-synchronous"><code>synchronous</code></a></td>
    <td>Description for Restarts an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#restore_from_backup_blob_slot"><CopyableCode code="restore_from_backup_blob_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores an app from a backup blob in Azure Storage.</td>
</tr>
<tr>
    <td><a href="#restore_from_deleted_app_slot"><CopyableCode code="restore_from_deleted_app_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a deleted web app to this web app.</td>
</tr>
<tr>
    <td><a href="#restore_snapshot_slot"><CopyableCode code="restore_snapshot_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Restores a web app from a snapshot.</td>
</tr>
<tr>
    <td><a href="#install_site_extension_slot"><CopyableCode code="install_site_extension_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-siteExtensionId"><code>siteExtensionId</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Install site extension on a web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#swap_slot_slot"><CopyableCode code="swap_slot_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSlot"><code>targetSlot</code></a>, <a href="#parameter-preserveVnet"><code>preserveVnet</code></a></td>
    <td></td>
    <td>Description for Swaps two deployment slots of an app.</td>
</tr>
<tr>
    <td><a href="#start_slot"><CopyableCode code="start_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Starts an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#start_network_trace_slot"><CopyableCode code="start_network_trace_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#stop_slot"><CopyableCode code="stop_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stops an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#stop_network_trace_slot"><CopyableCode code="stop_network_trace_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop ongoing capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#sync_repository_slot"><CopyableCode code="sync_repository_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Sync web app repository.</td>
</tr>
<tr>
    <td><a href="#sync_function_triggers_slot"><CopyableCode code="sync_function_triggers_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Syncs function trigger metadata to the management database</td>
</tr>
<tr>
    <td><a href="#run_triggered_web_job_slot"><CopyableCode code="run_triggered_web_job_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Run a triggered web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#swap_slot_with_production"><CopyableCode code="swap_slot_with_production" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetSlot"><code>targetSlot</code></a>, <a href="#parameter-preserveVnet"><code>preserveVnet</code></a></td>
    <td></td>
    <td>Description for Swaps two deployment slots of an app.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Starts an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#start_network_trace"><CopyableCode code="start_network_trace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a>, <a href="#parameter-maxFrameLength"><code>maxFrameLength</code></a>, <a href="#parameter-sasUrl"><code>sasUrl</code></a></td>
    <td>Description for Start capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stops an app (or deployment slot, if specified).</td>
</tr>
<tr>
    <td><a href="#stop_network_trace"><CopyableCode code="stop_network_trace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Stop ongoing capturing network packets for the site.</td>
</tr>
<tr>
    <td><a href="#sync_repository"><CopyableCode code="sync_repository" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Sync web app repository.</td>
</tr>
<tr>
    <td><a href="#sync_function_triggers"><CopyableCode code="sync_function_triggers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Syncs function trigger metadata to the management database</td>
</tr>
<tr>
    <td><a href="#run_triggered_web_job"><CopyableCode code="run_triggered_web_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-webJobName"><code>webJobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Run a triggered web job for an app, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#deploy_workflow_artifacts"><CopyableCode code="deploy_workflow_artifacts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Description for Creates the artifacts for web site, or a deployment slot.</td>
</tr>
<tr>
    <td><a href="#deploy_workflow_artifacts_slot"><CopyableCode code="deploy_workflow_artifacts_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a></td>
    <td></td>
    <td>Description for Creates the artifacts for web site, or a deployment slot.</td>
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
<tr id="parameter-backupId">
    <td><CopyableCode code="backupId" /></td>
    <td><code>string</code></td>
    <td>ID of the backup.</td>
</tr>
<tr id="parameter-baseAddress">
    <td><CopyableCode code="baseAddress" /></td>
    <td><code>string</code></td>
    <td>Module base address.</td>
</tr>
<tr id="parameter-functionName">
    <td><CopyableCode code="functionName" /></td>
    <td><code>string</code></td>
    <td>Function name.</td>
</tr>
<tr id="parameter-instanceId">
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>ID of a specific scaled-out instance. This is the value of the name property in the JSON response from "GET api/sites/&#123;siteName&#125;/instances".</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Site name.</td>
</tr>
<tr id="parameter-premierAddOnName">
    <td><CopyableCode code="premierAddOnName" /></td>
    <td><code>string</code></td>
    <td>Add-on name.</td>
</tr>
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-processId">
    <td><CopyableCode code="processId" /></td>
    <td><code>string</code></td>
    <td>PID.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-siteExtensionId">
    <td><CopyableCode code="siteExtensionId" /></td>
    <td><code>string</code></td>
    <td>Site extension name.</td>
</tr>
<tr id="parameter-slot">
    <td><CopyableCode code="slot" /></td>
    <td><code>string</code></td>
    <td>Name of the deployment slot.</td>
</tr>
<tr id="parameter-snapshotId">
    <td><CopyableCode code="snapshotId" /></td>
    <td><code>string</code></td>
    <td>The ID of the snapshot to read.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-subscriptionName">
    <td><CopyableCode code="subscriptionName" /></td>
    <td><code>string</code></td>
    <td>Azure subscription.</td>
</tr>
<tr id="parameter-webJobName">
    <td><CopyableCode code="webJobName" /></td>
    <td><code>string</code></td>
    <td>Name of Web Job.</td>
</tr>
<tr id="parameter-workflowName">
    <td><CopyableCode code="workflowName" /></td>
    <td><code>string</code></td>
    <td>Workflow name.</td>
</tr>
<tr id="parameter-deleteEmptyServerFarm">
    <td><CopyableCode code="deleteEmptyServerFarm" /></td>
    <td><code>boolean</code></td>
    <td>Specify false if you want to keep empty App Service plan. By default, empty App Service plan is deleted.</td>
</tr>
<tr id="parameter-deleteMetrics">
    <td><CopyableCode code="deleteMetrics" /></td>
    <td><code>boolean</code></td>
    <td>If true, web app metrics are also deleted.</td>
</tr>
<tr id="parameter-durationInSeconds">
    <td><CopyableCode code="durationInSeconds" /></td>
    <td><code>integer (int32)</code></td>
    <td>The duration to keep capturing in seconds.</td>
</tr>
<tr id="parameter-hostName">
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Custom hostname.</td>
</tr>
<tr id="parameter-includeSlots">
    <td><CopyableCode code="includeSlots" /></td>
    <td><code>boolean</code></td>
    <td>Specify &lt;strong&gt;true&lt;/strong&gt; to include deployment slots in results. The default is false, which only gives you the production slot of all apps.</td>
</tr>
<tr id="parameter-maxFrameLength">
    <td><CopyableCode code="maxFrameLength" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum frame length in bytes (Optional).</td>
</tr>
<tr id="parameter-sasUrl">
    <td><CopyableCode code="sasUrl" /></td>
    <td><code>string</code></td>
    <td>The Blob URL to store capture file.</td>
</tr>
<tr id="parameter-softRestart">
    <td><CopyableCode code="softRestart" /></td>
    <td><code>boolean</code></td>
    <td>Specify true to apply the configuration settings and restarts the app only if necessary. By default, the API always restarts and reprovisions the app.</td>
</tr>
<tr id="parameter-synchronous">
    <td><CopyableCode code="synchronous" /></td>
    <td><code>boolean</code></td>
    <td>Specify true to block until the app is restarted. By default, it is set to false, and the API responds immediately (asynchronous).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_instance_process_module_slot"
    values={[
        { label: 'get_instance_process_module_slot', value: 'get_instance_process_module_slot' },
        { label: 'get_instance_process_module', value: 'get_instance_process_module' },
        { label: 'get_instance_process_slot', value: 'get_instance_process_slot' },
        { label: 'list_instance_process_modules_slot', value: 'list_instance_process_modules_slot' },
        { label: 'list_instance_process_threads_slot', value: 'list_instance_process_threads_slot' },
        { label: 'get_instance_process', value: 'get_instance_process' },
        { label: 'list_instance_process_modules', value: 'list_instance_process_modules' },
        { label: 'list_instance_process_threads', value: 'list_instance_process_threads' },
        { label: 'get_instance_function_slot', value: 'get_instance_function_slot' },
        { label: 'get_instance_ms_deploy_status_slot', value: 'get_instance_ms_deploy_status_slot' },
        { label: 'get_instance_ms_deploy_log_slot', value: 'get_instance_ms_deploy_log_slot' },
        { label: 'list_instance_processes_slot', value: 'list_instance_processes_slot' },
        { label: 'get_instance_workflow_slot', value: 'get_instance_workflow_slot' },
        { label: 'get_instance_ms_deploy_status', value: 'get_instance_ms_deploy_status' },
        { label: 'get_instance_ms_deploy_log', value: 'get_instance_ms_deploy_log' },
        { label: 'list_instance_processes', value: 'list_instance_processes' },
        { label: 'list_backup_slots', value: 'list_backup_slots' },
        { label: 'get_diagnostic_logs_config_slot', value: 'get_diagnostic_logs_config_slot' },
        { label: 'list_instance_functions_slot', value: 'list_instance_functions_slot' },
        { label: 'list_instance_identifiers_slot', value: 'list_instance_identifiers_slot' },
        { label: 'list_instance_workflows_slot', value: 'list_instance_workflows_slot' },
        { label: 'get', value: 'get' },
        { label: 'get_diagnostic_logs_config', value: 'get_diagnostic_logs_config' },
        { label: 'list_instance_identifiers', value: 'list_instance_identifiers' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_instance_process_module_slot">

Description for Get process information by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND baseAddress = '{{ baseAddress }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_process_module">

Description for Get process information by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND baseAddress = '{{ baseAddress }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_process_slot">

Description for Get process information by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_process_modules_slot">

Description for List module information for a process by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_process_threads_slot">

Description for List the threads in a process by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_process">

Description for Get process information by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_process_modules">

Description for List module information for a process by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_process_threads">

Description for List the threads in a process by its ID for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND processId = '{{ processId }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_function_slot">

Description for Get function information by its ID for web site, or a deployment slot.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND functionName = '{{ functionName }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_ms_deploy_status_slot">

Description for Get the status of the last MSDeploy operation.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_ms_deploy_log_slot">

Description for Get the MSDeploy Log for the last MSDeploy operation.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_processes_slot">

Description for Get list of processes for a web site, or a deployment slot, or for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_workflow_slot">

Workflow information returned.

```sql
SELECT
id,
name,
kind,
location,
properties,
type
FROM azure.app_service.web_apps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND workflowName = '{{ workflowName }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_ms_deploy_status">

Description for Get the status of the last MSDeploy operation.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_instance_ms_deploy_log">

Description for Get the MSDeploy Log for the last MSDeploy operation.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_processes">

Description for Get list of processes for a web site, or a deployment slot, or for a specific scaled-out instance in a web site.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_backup_slots">

Description for Gets existing backups of an app.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_diagnostic_logs_config_slot">

Description for Gets the logging configuration of an app.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_functions_slot">

Description for List the functions for a web site, or a deployment slot.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_identifiers_slot">

Description for Gets all scale-out instances of an app.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_workflows_slot">

Workflow information returned.

```sql
SELECT
id,
name,
kind,
location,
properties,
type
FROM azure.app_service.web_apps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND slot = '{{ slot }}' -- required
;
```
</TabItem>
<TabItem value="get">

Description for Gets the details of a web, mobile, or API app.

```sql
SELECT
id,
name,
extendedLocation,
identity,
properties,
systemData,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_diagnostic_logs_config">

Description for Gets the logging configuration of an app.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_instance_identifiers">

Description for Gets all scale-out instances of an app.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Description for Gets all web, mobile, and API apps in the specified resource group.

```sql
SELECT
id,
name,
extendedLocation,
identity,
properties,
systemData,
type
FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND includeSlots = '{{ includeSlots }}'
;
```
</TabItem>
<TabItem value="list">

Description for Get all apps for a subscription.

```sql
SELECT
id,
name,
extendedLocation,
identity,
properties,
systemData,
type
FROM azure.app_service.web_apps
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Description for Creates a new web, mobile, or API app in an existing resource group, or updates an existing app.

```sql
INSERT INTO azure.app_service.web_apps (
data__properties,
data__identity,
data__extendedLocation,
resourceGroupName,
name,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ identity }}',
'{{ extendedLocation }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
extendedLocation,
identity,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: web_apps
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the web_apps resource.
    - name: name
      value: string
      description: Required parameter for the web_apps resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the web_apps resource.
    - name: properties
      value: object
      description: |
        Site resource specific properties
    - name: identity
      value: object
      description: |
        Managed service identity.
    - name: extendedLocation
      value: object
      description: |
        Extended Location.
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

Description for Creates a new web, mobile, or API app in an existing resource group, or updates an existing app.

```sql
UPDATE azure.app_service.web_apps
SET 
data__kind = '{{ kind }}',
data__properties = '{{ properties }}',
data__identity = '{{ identity }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
extendedLocation,
identity,
properties,
systemData,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_instance_process_slot"
    values={[
        { label: 'delete_instance_process_slot', value: 'delete_instance_process_slot' },
        { label: 'delete_instance_process', value: 'delete_instance_process' },
        { label: 'delete_instance_function_slot', value: 'delete_instance_function_slot' },
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete_instance_process_slot">

Description for Terminate a process by its ID for a web site, or a deployment slot, or specific scaled-out instance in a web site.

```sql
DELETE FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND processId = '{{ processId }}' --required
AND slot = '{{ slot }}' --required
AND instanceId = '{{ instanceId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="delete_instance_process">

Description for Terminate a process by its ID for a web site, or a deployment slot, or specific scaled-out instance in a web site.

```sql
DELETE FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND processId = '{{ processId }}' --required
AND instanceId = '{{ instanceId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="delete_instance_function_slot">

Description for Delete a function for web site, or a deployment slot.

```sql
DELETE FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND functionName = '{{ functionName }}' --required
AND slot = '{{ slot }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="delete">

Description for Deletes a web, mobile, or API app, or one of the deployment slots.

```sql
DELETE FROM azure.app_service.web_apps
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND deleteMetrics = '{{ deleteMetrics }}'
AND deleteEmptyServerFarm = '{{ deleteEmptyServerFarm }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="analyze_custom_hostname"
    values={[
        { label: 'analyze_custom_hostname', value: 'analyze_custom_hostname' },
        { label: 'apply_slot_config_to_production', value: 'apply_slot_config_to_production' },
        { label: 'backup', value: 'backup' },
        { label: 'restore', value: 'restore' },
        { label: 'recover_site_configuration_snapshot', value: 'recover_site_configuration_snapshot' },
        { label: 'start_continuous_web_job', value: 'start_continuous_web_job' },
        { label: 'stop_continuous_web_job', value: 'stop_continuous_web_job' },
        { label: 'discover_backup', value: 'discover_backup' },
        { label: 'sync_functions', value: 'sync_functions' },
        { label: 'get_instance_process_dump', value: 'get_instance_process_dump' },
        { label: 'is_cloneable', value: 'is_cloneable' },
        { label: 'migrate_storage', value: 'migrate_storage' },
        { label: 'migrate_my_sql', value: 'migrate_my_sql' },
        { label: 'start_web_site_network_trace', value: 'start_web_site_network_trace' },
        { label: 'start_web_site_network_trace_operation', value: 'start_web_site_network_trace_operation' },
        { label: 'stop_web_site_network_trace', value: 'stop_web_site_network_trace' },
        { label: 'generate_new_site_publishing_password', value: 'generate_new_site_publishing_password' },
        { label: 'add_premier_add_on', value: 'add_premier_add_on' },
        { label: 'put_private_access_vnet', value: 'put_private_access_vnet' },
        { label: 'approve_or_reject_private_endpoint_connection', value: 'approve_or_reject_private_endpoint_connection' },
        { label: 'reset_production_slot_config', value: 'reset_production_slot_config' },
        { label: 'restart', value: 'restart' },
        { label: 'restore_from_backup_blob', value: 'restore_from_backup_blob' },
        { label: 'restore_from_deleted_app', value: 'restore_from_deleted_app' },
        { label: 'restore_snapshot', value: 'restore_snapshot' },
        { label: 'install_site_extension', value: 'install_site_extension' },
        { label: 'analyze_custom_hostname_slot', value: 'analyze_custom_hostname_slot' },
        { label: 'apply_slot_configuration_slot', value: 'apply_slot_configuration_slot' },
        { label: 'backup_slot', value: 'backup_slot' },
        { label: 'restore_slot', value: 'restore_slot' },
        { label: 'recover_site_configuration_snapshot_slot', value: 'recover_site_configuration_snapshot_slot' },
        { label: 'start_continuous_web_job_slot', value: 'start_continuous_web_job_slot' },
        { label: 'stop_continuous_web_job_slot', value: 'stop_continuous_web_job_slot' },
        { label: 'discover_backup_slot', value: 'discover_backup_slot' },
        { label: 'sync_functions_slot', value: 'sync_functions_slot' },
        { label: 'get_instance_process_dump_slot', value: 'get_instance_process_dump_slot' },
        { label: 'is_cloneable_slot', value: 'is_cloneable_slot' },
        { label: 'start_web_site_network_trace_slot', value: 'start_web_site_network_trace_slot' },
        { label: 'start_web_site_network_trace_operation_slot', value: 'start_web_site_network_trace_operation_slot' },
        { label: 'stop_web_site_network_trace_slot', value: 'stop_web_site_network_trace_slot' },
        { label: 'generate_new_site_publishing_password_slot', value: 'generate_new_site_publishing_password_slot' },
        { label: 'add_premier_add_on_slot', value: 'add_premier_add_on_slot' },
        { label: 'put_private_access_vnet_slot', value: 'put_private_access_vnet_slot' },
        { label: 'approve_or_reject_private_endpoint_connection_slot', value: 'approve_or_reject_private_endpoint_connection_slot' },
        { label: 'reset_slot_configuration_slot', value: 'reset_slot_configuration_slot' },
        { label: 'restart_slot', value: 'restart_slot' },
        { label: 'restore_from_backup_blob_slot', value: 'restore_from_backup_blob_slot' },
        { label: 'restore_from_deleted_app_slot', value: 'restore_from_deleted_app_slot' },
        { label: 'restore_snapshot_slot', value: 'restore_snapshot_slot' },
        { label: 'install_site_extension_slot', value: 'install_site_extension_slot' },
        { label: 'swap_slot_slot', value: 'swap_slot_slot' },
        { label: 'start_slot', value: 'start_slot' },
        { label: 'start_network_trace_slot', value: 'start_network_trace_slot' },
        { label: 'stop_slot', value: 'stop_slot' },
        { label: 'stop_network_trace_slot', value: 'stop_network_trace_slot' },
        { label: 'sync_repository_slot', value: 'sync_repository_slot' },
        { label: 'sync_function_triggers_slot', value: 'sync_function_triggers_slot' },
        { label: 'run_triggered_web_job_slot', value: 'run_triggered_web_job_slot' },
        { label: 'swap_slot_with_production', value: 'swap_slot_with_production' },
        { label: 'start', value: 'start' },
        { label: 'start_network_trace', value: 'start_network_trace' },
        { label: 'stop', value: 'stop' },
        { label: 'stop_network_trace', value: 'stop_network_trace' },
        { label: 'sync_repository', value: 'sync_repository' },
        { label: 'sync_function_triggers', value: 'sync_function_triggers' },
        { label: 'run_triggered_web_job', value: 'run_triggered_web_job' },
        { label: 'deploy_workflow_artifacts', value: 'deploy_workflow_artifacts' },
        { label: 'deploy_workflow_artifacts_slot', value: 'deploy_workflow_artifacts_slot' }
    ]}
>
<TabItem value="analyze_custom_hostname">

Description for Analyze a custom hostname.

```sql
EXEC azure.app_service.web_apps.analyze_custom_hostname 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@hostName='{{ hostName }}'
;
```
</TabItem>
<TabItem value="apply_slot_config_to_production">

Description for Applies the configuration settings from the target slot onto the current slot.

```sql
EXEC azure.app_service.web_apps.apply_slot_config_to_production 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetSlot": "{{ targetSlot }}", 
"preserveVnet": {{ preserveVnet }}
}'
;
```
</TabItem>
<TabItem value="backup">

Description for Creates a backup of an app.

```sql
EXEC azure.app_service.web_apps.backup 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore">

Description for Restores a specific backup to another app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.restore 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@backupId='{{ backupId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="recover_site_configuration_snapshot">

Description for Reverts the configuration of an app to a previous snapshot.

```sql
EXEC azure.app_service.web_apps.recover_site_configuration_snapshot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@snapshotId='{{ snapshotId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start_continuous_web_job">

Description for Start a continuous web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.start_continuous_web_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop_continuous_web_job">

Description for Stop a continuous web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.stop_continuous_web_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="discover_backup">

Description for Discovers an existing app backup that can be restored from a blob in Azure storage. Use this to get information about the databases stored in a backup.

```sql
EXEC azure.app_service.web_apps.discover_backup 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="sync_functions">

Description for Syncs function trigger metadata to the management database

```sql
EXEC azure.app_service.web_apps.sync_functions 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="get_instance_process_dump">

Description for Get a memory dump of a process by its ID for a specific scaled-out instance in a web site.

```sql
EXEC azure.app_service.web_apps.get_instance_process_dump 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@processId='{{ processId }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="is_cloneable">

Description for Shows whether an app can be cloned to another resource group or subscription.

```sql
EXEC azure.app_service.web_apps.is_cloneable 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="migrate_storage">

Description for Restores a web app.

```sql
EXEC azure.app_service.web_apps.migrate_storage 
@subscriptionName='{{ subscriptionName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="migrate_my_sql">

Description for Migrates a local (in-app) MySql database to a remote MySql database.

```sql
EXEC azure.app_service.web_apps.migrate_my_sql 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="start_web_site_network_trace">

Description for Start capturing network packets for the site (To be deprecated).

```sql
EXEC azure.app_service.web_apps.start_web_site_network_trace 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="start_web_site_network_trace_operation">

Description for Start capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.start_web_site_network_trace_operation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="stop_web_site_network_trace">

Description for Stop ongoing capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.stop_web_site_network_trace 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="generate_new_site_publishing_password">

Description for Generates a new publishing password for an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.generate_new_site_publishing_password 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="add_premier_add_on">

Description for Updates a named add-on of an app.

```sql
EXEC azure.app_service.web_apps.add_premier_add_on 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@premierAddOnName='{{ premierAddOnName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="put_private_access_vnet">

Description for Sets data around private site access enablement and authorized Virtual Networks that can access the site.

```sql
EXEC azure.app_service.web_apps.put_private_access_vnet 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="approve_or_reject_private_endpoint_connection">

Description for Approves or rejects a private endpoint connection

```sql
EXEC azure.app_service.web_apps.approve_or_reject_private_endpoint_connection 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@privateEndpointConnectionName='{{ privateEndpointConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="reset_production_slot_config">

Description for Resets the configuration settings of the current slot if they were previously modified by calling the API with POST.

```sql
EXEC azure.app_service.web_apps.reset_production_slot_config 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="restart">

Description for Restarts an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.restart 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@softRestart={{ softRestart }}, 
@synchronous={{ synchronous }}
;
```
</TabItem>
<TabItem value="restore_from_backup_blob">

Description for Restores an app from a backup blob in Azure Storage.

```sql
EXEC azure.app_service.web_apps.restore_from_backup_blob 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore_from_deleted_app">

Description for Restores a deleted web app to this web app.

```sql
EXEC azure.app_service.web_apps.restore_from_deleted_app 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore_snapshot">

Description for Restores a web app from a snapshot.

```sql
EXEC azure.app_service.web_apps.restore_snapshot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="install_site_extension">

Description for Install site extension on a web site, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.install_site_extension 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@siteExtensionId='{{ siteExtensionId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="analyze_custom_hostname_slot">

Description for Analyze a custom hostname.

```sql
EXEC azure.app_service.web_apps.analyze_custom_hostname_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@hostName='{{ hostName }}'
;
```
</TabItem>
<TabItem value="apply_slot_configuration_slot">

Description for Applies the configuration settings from the target slot onto the current slot.

```sql
EXEC azure.app_service.web_apps.apply_slot_configuration_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetSlot": "{{ targetSlot }}", 
"preserveVnet": {{ preserveVnet }}
}'
;
```
</TabItem>
<TabItem value="backup_slot">

Description for Creates a backup of an app.

```sql
EXEC azure.app_service.web_apps.backup_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore_slot">

Description for Restores a specific backup to another app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.restore_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@backupId='{{ backupId }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="recover_site_configuration_snapshot_slot">

Description for Reverts the configuration of an app to a previous snapshot.

```sql
EXEC azure.app_service.web_apps.recover_site_configuration_snapshot_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@snapshotId='{{ snapshotId }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start_continuous_web_job_slot">

Description for Start a continuous web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.start_continuous_web_job_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop_continuous_web_job_slot">

Description for Stop a continuous web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.stop_continuous_web_job_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="discover_backup_slot">

Description for Discovers an existing app backup that can be restored from a blob in Azure storage. Use this to get information about the databases stored in a backup.

```sql
EXEC azure.app_service.web_apps.discover_backup_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="sync_functions_slot">

Description for Syncs function trigger metadata to the management database

```sql
EXEC azure.app_service.web_apps.sync_functions_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="get_instance_process_dump_slot">

Description for Get a memory dump of a process by its ID for a specific scaled-out instance in a web site.

```sql
EXEC azure.app_service.web_apps.get_instance_process_dump_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@processId='{{ processId }}' --required, 
@slot='{{ slot }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="is_cloneable_slot">

Description for Shows whether an app can be cloned to another resource group or subscription.

```sql
EXEC azure.app_service.web_apps.is_cloneable_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start_web_site_network_trace_slot">

Description for Start capturing network packets for the site (To be deprecated).

```sql
EXEC azure.app_service.web_apps.start_web_site_network_trace_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="start_web_site_network_trace_operation_slot">

Description for Start capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.start_web_site_network_trace_operation_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="stop_web_site_network_trace_slot">

Description for Stop ongoing capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.stop_web_site_network_trace_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="generate_new_site_publishing_password_slot">

Description for Generates a new publishing password for an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.generate_new_site_publishing_password_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="add_premier_add_on_slot">

Description for Updates a named add-on of an app.

```sql
EXEC azure.app_service.web_apps.add_premier_add_on_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@premierAddOnName='{{ premierAddOnName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="put_private_access_vnet_slot">

Description for Sets data around private site access enablement and authorized Virtual Networks that can access the site.

```sql
EXEC azure.app_service.web_apps.put_private_access_vnet_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="approve_or_reject_private_endpoint_connection_slot">

Description for Approves or rejects a private endpoint connection

```sql
EXEC azure.app_service.web_apps.approve_or_reject_private_endpoint_connection_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@privateEndpointConnectionName='{{ privateEndpointConnectionName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="reset_slot_configuration_slot">

Description for Resets the configuration settings of the current slot if they were previously modified by calling the API with POST.

```sql
EXEC azure.app_service.web_apps.reset_slot_configuration_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="restart_slot">

Description for Restarts an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.restart_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@softRestart={{ softRestart }}, 
@synchronous={{ synchronous }}
;
```
</TabItem>
<TabItem value="restore_from_backup_blob_slot">

Description for Restores an app from a backup blob in Azure Storage.

```sql
EXEC azure.app_service.web_apps.restore_from_backup_blob_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore_from_deleted_app_slot">

Description for Restores a deleted web app to this web app.

```sql
EXEC azure.app_service.web_apps.restore_from_deleted_app_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="restore_snapshot_slot">

Description for Restores a web app from a snapshot.

```sql
EXEC azure.app_service.web_apps.restore_snapshot_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="install_site_extension_slot">

Description for Install site extension on a web site, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.install_site_extension_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@siteExtensionId='{{ siteExtensionId }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="swap_slot_slot">

Description for Swaps two deployment slots of an app.

```sql
EXEC azure.app_service.web_apps.swap_slot_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetSlot": "{{ targetSlot }}", 
"preserveVnet": {{ preserveVnet }}
}'
;
```
</TabItem>
<TabItem value="start_slot">

Description for Starts an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.start_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start_network_trace_slot">

Description for Start capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.start_network_trace_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="stop_slot">

Description for Stops an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.stop_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop_network_trace_slot">

Description for Stop ongoing capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.stop_network_trace_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="sync_repository_slot">

Description for Sync web app repository.

```sql
EXEC azure.app_service.web_apps.sync_repository_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="sync_function_triggers_slot">

Description for Syncs function trigger metadata to the management database

```sql
EXEC azure.app_service.web_apps.sync_function_triggers_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="run_triggered_web_job_slot">

Description for Run a triggered web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.run_triggered_web_job_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="swap_slot_with_production">

Description for Swaps two deployment slots of an app.

```sql
EXEC azure.app_service.web_apps.swap_slot_with_production 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetSlot": "{{ targetSlot }}", 
"preserveVnet": {{ preserveVnet }}
}'
;
```
</TabItem>
<TabItem value="start">

Description for Starts an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start_network_trace">

Description for Start capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.start_network_trace 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@durationInSeconds='{{ durationInSeconds }}', 
@maxFrameLength='{{ maxFrameLength }}', 
@sasUrl='{{ sasUrl }}'
;
```
</TabItem>
<TabItem value="stop">

Description for Stops an app (or deployment slot, if specified).

```sql
EXEC azure.app_service.web_apps.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop_network_trace">

Description for Stop ongoing capturing network packets for the site.

```sql
EXEC azure.app_service.web_apps.stop_network_trace 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="sync_repository">

Description for Sync web app repository.

```sql
EXEC azure.app_service.web_apps.sync_repository 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="sync_function_triggers">

Description for Syncs function trigger metadata to the management database

```sql
EXEC azure.app_service.web_apps.sync_function_triggers 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="run_triggered_web_job">

Description for Run a triggered web job for an app, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.run_triggered_web_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@webJobName='{{ webJobName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="deploy_workflow_artifacts">

Description for Creates the artifacts for web site, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.deploy_workflow_artifacts 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required 
@@json=
'{
"appSettings": "{{ appSettings }}", 
"files": "{{ files }}", 
"filesToDelete": "{{ filesToDelete }}"
}'
;
```
</TabItem>
<TabItem value="deploy_workflow_artifacts_slot">

Description for Creates the artifacts for web site, or a deployment slot.

```sql
EXEC azure.app_service.web_apps.deploy_workflow_artifacts_slot 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required 
@@json=
'{
"appSettings": "{{ appSettings }}", 
"files": "{{ files }}", 
"filesToDelete": "{{ filesToDelete }}"
}'
;
```
</TabItem>
</Tabs>
