"use client";

import AnimatedAvatar from './AnimatedAvatar';

export default function AvatarStack({ avatars = [], maxVisible = 3, size = 40 }) {
  const visibleAvatars = avatars.slice(0, maxVisible);
  const remaining = avatars.length - maxVisible;

  return (
    <div className="flex items-center" style={{ direction: 'ltr' }}>
      {visibleAvatars.map((avatar, index) => (
        <div
          key={avatar.id || index}
          className="relative"
          style={{
            marginLeft: index > 0 ? `-${size * 0.3}px` : '0',
            zIndex: visibleAvatars.length - index,
          }}
        >
          <AnimatedAvatar
            seed={avatar.seed || avatar.name || `avatar-${index}`}
            size={size}
            hasStatus={avatar.hasStatus}
            isOnline={avatar.isOnline}
          />
        </div>
      ))}
      {remaining > 0 && (
        <div
          className="relative flex items-center justify-center rounded-full border-2 border-white bg-gray-800 text-xs font-semibold text-white"
          style={{
            width: size,
            height: size,
            marginLeft: `-${size * 0.3}px`,
            zIndex: 0,
          }}
        >
          +{remaining}
        </div>
      )}
    </div>
  );
}

