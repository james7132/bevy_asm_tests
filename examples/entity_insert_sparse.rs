use bevy_ecs::{prelude::*, world::EntityMut};

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn entity_insert(mut entity: EntityWorldMut<'_>, component: A) {
    entity.insert(component);
}
