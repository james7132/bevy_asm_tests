use bevy_ecs::prelude::*;
use std::hint::black_box;
#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn query_get(query: &mut QueryState<(&mut A, &B)>, entity: Entity, world: &mut World) {
    let _ = black_box(query.get_mut(world, entity));
}
