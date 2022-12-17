use bevy_ecs::prelude::*;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn query_for_each(mut query: Query<(&mut A, &B)>) {
    query.for_each_mut(|(mut a, b)| {
        a.0 += b.0;
    })
}
