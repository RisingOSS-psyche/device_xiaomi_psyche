package com.xiaomi.dspvolume;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.IBinder;

import androidx.annotation.Nullable;

public class VolumeListenerService extends Service {
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        registerReceiver(new VolumeListenerReceiver(), intentFilter);

        AudioManager audioManager = getSystemService(AudioManager.class);
        int current = audioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        int VolStep = audioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
        int targetVol = (int) Math.round(current * 15.0 / VolStep);
        audioManager.setParameters("volume_change=" + targetVol + ";flags=8");

        return super.onStartCommand(intent, flags, startId);
    }
}
