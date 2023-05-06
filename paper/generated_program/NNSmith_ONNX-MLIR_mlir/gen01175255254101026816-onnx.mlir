module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 2 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[5]], [[6]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %8, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.insertvalue %14, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.insertvalue %16, %15[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<f32>
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<f32> to i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<f32> to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %35, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %35  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr<f32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %30, %50[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %31, %51[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%53 : i64)
  ^bb1(%56: i64):  // 2 preds: ^bb0, ^bb2
    %57 = llvm.icmp "slt" %56, %54 : i64
    llvm.cond_br %57, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %58 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %58[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.sitofp %60 : i32 to f32
    %62 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%56] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %61, %63 : !llvm.ptr<f32>
    %64 = llvm.add %56, %55  : i64
    llvm.br ^bb1(%64 : i64)
  ^bb3:  // pred: ^bb1
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.null : !llvm.ptr<f32>
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<f32> to i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.add %69, %70  : i64
    %72 = llvm.call @malloc(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.bitcast %72 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<f32> to i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.sub %70, %75  : i64
    %77 = llvm.add %74, %76  : i64
    %78 = llvm.urem %77, %70  : i64
    %79 = llvm.sub %77, %78  : i64
    %80 = llvm.inttoptr %79 : i64 to !llvm.ptr<f32>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.insertvalue %73, %81[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %65, %85[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %66, %86[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%88 : i64)
  ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %93 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %93[%91] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %95 = llvm.load %94 : !llvm.ptr<f32>
    %96 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %96[%91] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %98 = llvm.load %97 : !llvm.ptr<f32>
    %99 = llvm.fsub %95, %98  : f32
    %100 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.getelementptr %100[%91] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %99, %101 : !llvm.ptr<f32>
    %102 = llvm.add %91, %90  : i64
    llvm.br ^bb4(%102 : i64)
  ^bb6:  // pred: ^bb4
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mlir.null : !llvm.ptr<i32>
    %112 = llvm.getelementptr %111[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<i32> to i64
    %114 = llvm.mlir.constant(16 : index) : i64
    %115 = llvm.add %113, %114  : i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr<i8>
    %117 = llvm.bitcast %116 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<i32> to i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.sub %114, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.urem %121, %114  : i64
    %123 = llvm.sub %121, %122  : i64
    %124 = llvm.inttoptr %123 : i64 to !llvm.ptr<i32>
    %125 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %126 = llvm.insertvalue %117, %125[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %124, %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.insertvalue %128, %127[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %109, %133[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %106, %135[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %107, %136[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%138 : i64)
  ^bb7(%141: i64):  // 2 preds: ^bb6, ^bb17
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%143 : i64)
  ^bb9(%146: i64):  // 2 preds: ^bb8, ^bb16
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%148 : i64)
  ^bb11(%151: i64):  // 2 preds: ^bb10, ^bb15
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%153 : i64)
  ^bb13(%156: i64):  // 2 preds: ^bb12, ^bb14
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %158 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.getelementptr %158[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %160 = llvm.load %159 : !llvm.ptr<i32>
    %161 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mul %141, %162  : i64
    %164 = llvm.add %163, %146  : i64
    %165 = llvm.add %164, %151  : i64
    %166 = llvm.add %165, %6  : i64
    %167 = llvm.getelementptr %161[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.add %160, %168  : i32
    %170 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mul %141, %171  : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mul %146, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mul %151, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.add %178, %156  : i64
    %180 = llvm.getelementptr %170[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %169, %180 : !llvm.ptr<i32>
    %181 = llvm.add %156, %155  : i64
    llvm.br ^bb13(%181 : i64)
  ^bb15:  // pred: ^bb13
    %182 = llvm.add %151, %150  : i64
    llvm.br ^bb11(%182 : i64)
  ^bb16:  // pred: ^bb11
    %183 = llvm.add %146, %145  : i64
    llvm.br ^bb9(%183 : i64)
  ^bb17:  // pred: ^bb9
    %184 = llvm.add %141, %140  : i64
    llvm.br ^bb7(%184 : i64)
  ^bb18:  // pred: ^bb7
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mlir.null : !llvm.ptr<i32>
    %194 = llvm.getelementptr %193[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(16 : index) : i64
    %197 = llvm.add %195, %196  : i64
    %198 = llvm.call @malloc(%197) : (i64) -> !llvm.ptr<i8>
    %199 = llvm.bitcast %198 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i32> to i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.sub %196, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.urem %203, %196  : i64
    %205 = llvm.sub %203, %204  : i64
    %206 = llvm.inttoptr %205 : i64 to !llvm.ptr<i32>
    %207 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %208 = llvm.insertvalue %199, %207[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %206, %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.insertvalue %210, %209[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %191, %215[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %188, %217[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %189, %218[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%220 : i64)
  ^bb19(%223: i64):  // 2 preds: ^bb18, ^bb29
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%225 : i64)
  ^bb21(%228: i64):  // 2 preds: ^bb20, ^bb28
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%230 : i64)
  ^bb23(%233: i64):  // 2 preds: ^bb22, ^bb27
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%235 : i64)
  ^bb25(%238: i64):  // 2 preds: ^bb24, ^bb26
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %240 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mul %223, %244  : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mul %228, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %233, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %238  : i64
    %253 = llvm.getelementptr %243[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.sub %242, %254  : i32
    %256 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mul %223, %257  : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mul %228, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %233, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.add %264, %238  : i64
    %266 = llvm.getelementptr %256[%265] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %255, %266 : !llvm.ptr<i32>
    %267 = llvm.add %238, %237  : i64
    llvm.br ^bb25(%267 : i64)
  ^bb27:  // pred: ^bb25
    %268 = llvm.add %233, %232  : i64
    llvm.br ^bb23(%268 : i64)
  ^bb28:  // pred: ^bb23
    %269 = llvm.add %228, %227  : i64
    llvm.br ^bb21(%269 : i64)
  ^bb29:  // pred: ^bb21
    %270 = llvm.add %223, %222  : i64
    llvm.br ^bb19(%270 : i64)
  ^bb30:  // pred: ^bb19
    %271 = llvm.mlir.constant(3 : index) : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mlir.constant(12 : index) : i64
    %279 = llvm.mlir.null : !llvm.ptr<i32>
    %280 = llvm.getelementptr %279[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i32> to i64
    %282 = llvm.mlir.constant(16 : index) : i64
    %283 = llvm.add %281, %282  : i64
    %284 = llvm.call @malloc(%283) : (i64) -> !llvm.ptr<i8>
    %285 = llvm.bitcast %284 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i32> to i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.sub %282, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.urem %289, %282  : i64
    %291 = llvm.sub %289, %290  : i64
    %292 = llvm.inttoptr %291 : i64 to !llvm.ptr<i32>
    %293 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %294 = llvm.insertvalue %285, %293[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %277, %301[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %274, %303[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %275, %304[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%306 : i64)
  ^bb31(%309: i64):  // 2 preds: ^bb30, ^bb41
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%311 : i64)
  ^bb33(%314: i64):  // 2 preds: ^bb32, ^bb40
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%316 : i64)
  ^bb35(%319: i64):  // 2 preds: ^bb34, ^bb39
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%321 : i64)
  ^bb37(%324: i64):  // 2 preds: ^bb36, ^bb38
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %326 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %309, %327  : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %314, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %319, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.add %334, %324  : i64
    %336 = llvm.getelementptr %326[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.load %336 : !llvm.ptr<i32>
    %338 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mul %309, %339  : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mul %314, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %319, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.add %346, %324  : i64
    %348 = llvm.getelementptr %338[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %348 : !llvm.ptr<i32>
    %349 = llvm.add %324, %323  : i64
    llvm.br ^bb37(%349 : i64)
  ^bb39:  // pred: ^bb37
    %350 = llvm.add %319, %318  : i64
    llvm.br ^bb35(%350 : i64)
  ^bb40:  // pred: ^bb35
    %351 = llvm.add %314, %313  : i64
    llvm.br ^bb33(%351 : i64)
  ^bb41:  // pred: ^bb33
    %352 = llvm.add %309, %308  : i64
    llvm.br ^bb31(%352 : i64)
  ^bb42:  // pred: ^bb31
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%353 : i64)
  ^bb43(%356: i64):  // 2 preds: ^bb42, ^bb53
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%358 : i64)
  ^bb45(%361: i64):  // 2 preds: ^bb44, ^bb52
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%363 : i64)
  ^bb47(%366: i64):  // 2 preds: ^bb46, ^bb51
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%368 : i64)
  ^bb49(%371: i64):  // 2 preds: ^bb48, ^bb50
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.add %356, %373  : i64
    %375 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %356, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %361, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %366, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %371  : i64
    %385 = llvm.getelementptr %375[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %386 = llvm.load %385 : !llvm.ptr<i32>
    %387 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %374, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %361, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %366, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.add %395, %371  : i64
    %397 = llvm.getelementptr %387[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %397 : !llvm.ptr<i32>
    %398 = llvm.add %371, %370  : i64
    llvm.br ^bb49(%398 : i64)
  ^bb51:  // pred: ^bb49
    %399 = llvm.add %366, %365  : i64
    llvm.br ^bb47(%399 : i64)
  ^bb52:  // pred: ^bb47
    %400 = llvm.add %361, %360  : i64
    llvm.br ^bb45(%400 : i64)
  ^bb53:  // pred: ^bb45
    %401 = llvm.add %356, %355  : i64
    llvm.br ^bb43(%401 : i64)
  ^bb54:  // pred: ^bb43
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%402 : i64)
  ^bb55(%405: i64):  // 2 preds: ^bb54, ^bb65
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%407 : i64)
  ^bb57(%410: i64):  // 2 preds: ^bb56, ^bb64
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%412 : i64)
  ^bb59(%415: i64):  // 2 preds: ^bb58, ^bb63
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%417 : i64)
  ^bb61(%420: i64):  // 2 preds: ^bb60, ^bb62
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.add %405, %422  : i64
    %424 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %405, %425  : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mul %410, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %415, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %420  : i64
    %434 = llvm.getelementptr %424[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.load %434 : !llvm.ptr<i32>
    %436 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(4 : index) : i64
    %438 = llvm.mul %423, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %410, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mul %415, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.add %444, %420  : i64
    %446 = llvm.getelementptr %436[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %435, %446 : !llvm.ptr<i32>
    %447 = llvm.add %420, %419  : i64
    llvm.br ^bb61(%447 : i64)
  ^bb63:  // pred: ^bb61
    %448 = llvm.add %415, %414  : i64
    llvm.br ^bb59(%448 : i64)
  ^bb64:  // pred: ^bb59
    %449 = llvm.add %410, %409  : i64
    llvm.br ^bb57(%449 : i64)
  ^bb65:  // pred: ^bb57
    %450 = llvm.add %405, %404  : i64
    llvm.br ^bb55(%450 : i64)
  ^bb66:  // pred: ^bb55
    %451 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %452 = llvm.insertvalue %87, %451[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %453 = llvm.insertvalue %305, %452[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %453 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(0 : i64) : i64
    %46 = llvm.getelementptr %29[%45] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %46 : !llvm.ptr<ptr<i8>>
    %47 = llvm.mlir.constant(4 : i64) : i64
    %48 = llvm.call @omTensorCreateUntyped(%47) : (i64) -> !llvm.ptr<i8>
    %49 = llvm.mlir.constant(1 : i64) : i64
    %50 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.bitcast %50 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %52 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%48, %49, %51, %53) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %54 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%48, %54) : (!llvm.ptr<i8>, i64) -> ()
    %55 = llvm.call @omTensorGetShape(%48) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%48) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.mlir.constant(1 : i64) : i64
    %63 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %55[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %56[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %55[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %56[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(3 : i64) : i64
    %73 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %55[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %56[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.getelementptr %29[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %48, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %79 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

