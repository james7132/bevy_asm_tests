use bevy_ecs::{prelude::*, world::EntityMut};

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn entity_insert(mut entity: EntityMut<'_>, component: A) {
    entity.insert(component);
}
