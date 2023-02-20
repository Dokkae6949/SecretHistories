extends EquipmentItem;
class_name ToolItem


func _process(delta):
	if $ignite: # this should be capitalized but when you do, will break collision shapes for all children, so takes some work to fix
		if item_state == GlobalConsts.ItemState.DROPPED:
			$ignite/CollisionShape.disabled = false
		else:
			$ignite/CollisionShape.disabled = true
