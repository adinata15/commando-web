<script lang="ts">
  import * as DropdownMenu from "$lib/components/ui/dropdown-menu/index.js";
  import { Button } from "$lib/components/ui/button/index.js";
 
  let showStatusBar = true;
  let showActivityBar = false;
  let showPanel = false;
</script>
 
<div class="flex place-content-center">
  <DropdownMenu.Root>
   <DropdownMenu.Trigger asChild let:builder>
     <Button variant="outline" builders={[builder]} class="w-96">Open</Button>
   </DropdownMenu.Trigger>
   <DropdownMenu.Content class="w-56">
     <DropdownMenu.Label>Appearance</DropdownMenu.Label>
     <DropdownMenu.Separator />
     <DropdownMenu.CheckboxItem bind:checked={showStatusBar}>
       Status Bar
     </DropdownMenu.CheckboxItem>
     <DropdownMenu.CheckboxItem bind:checked={showActivityBar} disabled>
       Activity Bar
     </DropdownMenu.CheckboxItem>
     <DropdownMenu.CheckboxItem bind:checked={showPanel}
       >Panel</DropdownMenu.CheckboxItem
     >
   </DropdownMenu.Content>
 </DropdownMenu.Root>
</div>
