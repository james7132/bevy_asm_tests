use bevy_ecs::{prelude::*, world::EntityMut};

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn world_insert_or_spawn_batch(world: &mut World, components: Vec<(Entity, (A, B))>) {
    world.insert_or_spawn_batch(components.into_iter());
}
