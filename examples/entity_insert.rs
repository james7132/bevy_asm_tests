use bevy_ecs::prelude::*;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn entity_insert(world: &mut World, entity: Entity, component: A) {
    world.entity_mut(entity).insert(component);
}
