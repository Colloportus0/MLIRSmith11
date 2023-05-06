module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.null : !llvm.ptr<i32>
    %19 = llvm.getelementptr %18[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %20 = llvm.ptrtoint %19 : !llvm.ptr<i32> to i64
    %21 = llvm.mlir.constant(16 : index) : i64
    %22 = llvm.add %20, %21  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr<i8>
    %24 = llvm.bitcast %23 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<i32> to i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.sub %21, %26  : i64
    %28 = llvm.add %25, %27  : i64
    %29 = llvm.urem %28, %21  : i64
    %30 = llvm.sub %28, %29  : i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %24, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %13, %36[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %14, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%45 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb11
    %49 = llvm.icmp "slt" %48, %46 : i64
    llvm.cond_br %49, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%50 : i64)
  ^bb3(%53: i64):  // 2 preds: ^bb2, ^bb10
    %54 = llvm.icmp "slt" %53, %51 : i64
    llvm.cond_br %54, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%55 : i64)
  ^bb5(%58: i64):  // 2 preds: ^bb4, ^bb9
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%60 : i64)
  ^bb7(%63: i64):  // 2 preds: ^bb6, ^bb8
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %65 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.add %48, %53  : i64
    %67 = llvm.add %66, %58  : i64
    %68 = llvm.add %67, %63  : i64
    %69 = llvm.getelementptr %65[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.load %69 : !llvm.ptr<i32>
    %71 = llvm.mlir.constant(false) : i1
    %72 = "llvm.intr.abs"(%70, %71) : (i32, i1) -> i32
    %73 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.add %48, %53  : i64
    %75 = llvm.add %74, %58  : i64
    %76 = llvm.add %75, %63  : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %72, %77 : !llvm.ptr<i32>
    %78 = llvm.add %63, %62  : i64
    llvm.br ^bb7(%78 : i64)
  ^bb9:  // pred: ^bb7
    %79 = llvm.add %58, %57  : i64
    llvm.br ^bb5(%79 : i64)
  ^bb10:  // pred: ^bb5
    %80 = llvm.add %53, %52  : i64
    llvm.br ^bb3(%80 : i64)
  ^bb11:  // pred: ^bb3
    %81 = llvm.add %48, %47  : i64
    llvm.br ^bb1(%81 : i64)
  ^bb12:  // pred: ^bb1
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i32>
    %87 = llvm.getelementptr %86[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i32> to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %89, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %89  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr<i32>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.insertvalue %82, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.insertvalue %83, %105[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.insertvalue %84, %106[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.insertvalue %83, %107[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.insertvalue %84, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.insertvalue %85, %109[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%111 : i64)
  ^bb13(%114: i64):  // 2 preds: ^bb12, ^bb20
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%116 : i64)
  ^bb15(%119: i64):  // 2 preds: ^bb14, ^bb19
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%121 : i64)
  ^bb17(%124: i64):  // 2 preds: ^bb16, ^bb18
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %126 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.add %114, %119  : i64
    %128 = llvm.add %127, %124  : i64
    %129 = llvm.getelementptr %126[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %129 : !llvm.ptr<i32>
    %130 = llvm.add %124, %123  : i64
    llvm.br ^bb17(%130 : i64)
  ^bb19:  // pred: ^bb17
    %131 = llvm.add %119, %118  : i64
    llvm.br ^bb15(%131 : i64)
  ^bb20:  // pred: ^bb15
    %132 = llvm.add %114, %113  : i64
    llvm.br ^bb13(%132 : i64)
  ^bb21:  // pred: ^bb13
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%133 : i64)
  ^bb22(%136: i64):  // 2 preds: ^bb21, ^bb32
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%138 : i64)
  ^bb24(%141: i64):  // 2 preds: ^bb23, ^bb31
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%143 : i64)
  ^bb26(%146: i64):  // 2 preds: ^bb25, ^bb30
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%148 : i64)
  ^bb28(%151: i64):  // 2 preds: ^bb27, ^bb29
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %153 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.add %136, %141  : i64
    %155 = llvm.add %154, %146  : i64
    %156 = llvm.add %155, %151  : i64
    %157 = llvm.getelementptr %153[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %158 = llvm.load %157 : !llvm.ptr<i32>
    %159 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.add %136, %146  : i64
    %161 = llvm.add %160, %151  : i64
    %162 = llvm.getelementptr %159[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.icmp "slt" %163, %158 : i32
    %165 = llvm.select %164, %163, %158 : i1, i32
    %166 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.add %136, %146  : i64
    %168 = llvm.add %167, %151  : i64
    %169 = llvm.getelementptr %166[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %165, %169 : !llvm.ptr<i32>
    %170 = llvm.add %151, %150  : i64
    llvm.br ^bb28(%170 : i64)
  ^bb30:  // pred: ^bb28
    %171 = llvm.add %146, %145  : i64
    llvm.br ^bb26(%171 : i64)
  ^bb31:  // pred: ^bb26
    %172 = llvm.add %141, %140  : i64
    llvm.br ^bb24(%172 : i64)
  ^bb32:  // pred: ^bb24
    %173 = llvm.add %136, %135  : i64
    llvm.br ^bb22(%173 : i64)
  ^bb33:  // pred: ^bb22
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.null : !llvm.ptr<i32>
    %180 = llvm.getelementptr %179[%174] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i32> to i64
    %182 = llvm.mlir.constant(16 : index) : i64
    %183 = llvm.add %181, %182  : i64
    %184 = llvm.call @malloc(%183) : (i64) -> !llvm.ptr<i8>
    %185 = llvm.bitcast %184 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<i32> to i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.sub %182, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.urem %189, %182  : i64
    %191 = llvm.sub %189, %190  : i64
    %192 = llvm.inttoptr %191 : i64 to !llvm.ptr<i32>
    %193 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %194 = llvm.insertvalue %185, %193[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %192, %194[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %174, %197[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %175, %198[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %176, %199[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %177, %200[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %175, %201[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %176, %202[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%206 : i64)
  ^bb34(%209: i64):  // 2 preds: ^bb33, ^bb44
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%211 : i64)
  ^bb36(%214: i64):  // 2 preds: ^bb35, ^bb43
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%216 : i64)
  ^bb38(%219: i64):  // 2 preds: ^bb37, ^bb42
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%221 : i64)
  ^bb40(%224: i64):  // 2 preds: ^bb39, ^bb41
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %226 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.add %209, %214  : i64
    %228 = llvm.add %227, %219  : i64
    %229 = llvm.add %228, %224  : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.add %209, %214  : i64
    %234 = llvm.add %233, %219  : i64
    %235 = llvm.add %234, %224  : i64
    %236 = llvm.getelementptr %232[%235] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.load %236 : !llvm.ptr<i32>
    %238 = llvm.sub %231, %237  : i32
    %239 = llvm.extractvalue %205[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.add %209, %214  : i64
    %241 = llvm.add %240, %219  : i64
    %242 = llvm.add %241, %224  : i64
    %243 = llvm.getelementptr %239[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %238, %243 : !llvm.ptr<i32>
    %244 = llvm.add %224, %223  : i64
    llvm.br ^bb40(%244 : i64)
  ^bb42:  // pred: ^bb40
    %245 = llvm.add %219, %218  : i64
    llvm.br ^bb38(%245 : i64)
  ^bb43:  // pred: ^bb38
    %246 = llvm.add %214, %213  : i64
    llvm.br ^bb36(%246 : i64)
  ^bb44:  // pred: ^bb36
    %247 = llvm.add %209, %208  : i64
    llvm.br ^bb34(%247 : i64)
  ^bb45:  // pred: ^bb34
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.null : !llvm.ptr<i1>
    %254 = llvm.getelementptr %253[%248] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i1> to i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr<i8>
    %259 = llvm.bitcast %258 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i1> to i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.sub %256, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.urem %263, %256  : i64
    %265 = llvm.sub %263, %264  : i64
    %266 = llvm.inttoptr %265 : i64 to !llvm.ptr<i1>
    %267 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %268 = llvm.insertvalue %259, %267[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %248, %271[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %249, %272[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %250, %273[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %251, %274[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%280 : i64)
  ^bb46(%283: i64):  // 2 preds: ^bb45, ^bb56
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%285 : i64)
  ^bb48(%288: i64):  // 2 preds: ^bb47, ^bb55
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%290 : i64)
  ^bb50(%293: i64):  // 2 preds: ^bb49, ^bb54
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%295 : i64)
  ^bb52(%298: i64):  // 2 preds: ^bb51, ^bb53
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %300 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.add %283, %288  : i64
    %302 = llvm.add %301, %293  : i64
    %303 = llvm.add %302, %298  : i64
    %304 = llvm.getelementptr %300[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.extractvalue %205[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.add %283, %288  : i64
    %308 = llvm.add %307, %293  : i64
    %309 = llvm.add %308, %298  : i64
    %310 = llvm.getelementptr %306[%309] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.load %310 : !llvm.ptr<i32>
    %312 = llvm.icmp "eq" %305, %311 : i32
    %313 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.add %283, %288  : i64
    %315 = llvm.add %314, %293  : i64
    %316 = llvm.add %315, %298  : i64
    %317 = llvm.getelementptr %313[%316] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %312, %317 : !llvm.ptr<i1>
    %318 = llvm.add %298, %297  : i64
    llvm.br ^bb52(%318 : i64)
  ^bb54:  // pred: ^bb52
    %319 = llvm.add %293, %292  : i64
    llvm.br ^bb50(%319 : i64)
  ^bb55:  // pred: ^bb50
    %320 = llvm.add %288, %287  : i64
    llvm.br ^bb48(%320 : i64)
  ^bb56:  // pred: ^bb48
    %321 = llvm.add %283, %282  : i64
    llvm.br ^bb46(%321 : i64)
  ^bb57:  // pred: ^bb46
    %322 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %323 = llvm.insertvalue %110, %322[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %324 = llvm.insertvalue %279, %323[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %324 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

